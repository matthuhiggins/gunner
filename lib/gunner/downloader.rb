require 'fileutils'

module Gunner
  class Downloader
    class << self
      def download_gist(gist_info)
        FileUtils.mkdir_p 'cool/beans'

        files.each do |key, attributes|
          Gunner::Connection.download attributes['raw_url']
        end
        
      end

      def download(raw_url)
        
      end
    end
  end
end