require 'net/http'
require 'net/https'
require 'json'

module Gunner
  class Connection
    class << self
      def json_request(url)
        JSON.parse request(url).body
      end

      def request(url)
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