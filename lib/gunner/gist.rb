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
      @info ||= Gunner::Connection.json_request("https://api.github.com/gists/#{token}")
    end

    def directory_path
      "tmp/gunner/#{token}/"
    end
  end
end