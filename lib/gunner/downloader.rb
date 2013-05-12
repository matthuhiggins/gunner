require 'fileutils'

module Gunner
  class Downloader
    attr_accessor :gist
    def initialize(gist)
      @gist = gist
    end

    def run
      p "Getting gist information for #{gist.token}"
      files = gist.info['files']

      if files.nil?
        raise "Could not find gist #{gist_token}"
      end

      create_directory

      files.each do |key, attributes|
        p "  Downloading #{key}"
        download(attributes)
      end
    end

    def download(attributes)
      raw_url = attributes['raw_url']
      response = Gunner::Connection.gist_request(raw_url)
      while raw_url = response['location']
        response = Gunner::Connection.gist_request(raw_url)
      end
      File.open("#{gist.directory_path}/#{attributes['filename']}", 'wb') do |file|
        file.write(response.body)
      end
    end
    
    private

      def create_directory
        FileUtils.mkdir_p gist.directory_path
      end
  end
end