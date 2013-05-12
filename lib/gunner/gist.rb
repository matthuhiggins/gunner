module Gunner
  class Gist
    attr_accessor :token
    def initialize(token)
      @token = token
    end

    def download
      Gunner::Downloader.new(self).run
    end

    def run
      load "#{directory_path}/Gunfile"
    end

    def info
      Gunner::Connection.gist_info(token)
    end

    def directory_path
      "tmp/gunner/#{token}/"
    end
  end
end