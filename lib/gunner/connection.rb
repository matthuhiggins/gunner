require 'net/http'
require 'net/https'
require 'json'

module Gunner
  class Connection
    class << self
      def gist_info(gist_token)
        JSON.parse gist_request("https://api.github.com/gists/#{gist_token}").body
      end

      def download(raw_url)
        p raw_url
        p gist_request(raw_url).body
      end

      def gist_request(url)
        uri = URI.parse(url)
        request = Net::HTTP::Get.new(uri.request_uri)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        http.request(request)
      end
    end
  end
end