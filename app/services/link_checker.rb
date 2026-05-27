require 'net/http'
require 'uri'

class LinkChecker
  def self.valid?(url)
    uri = URI.parse(url)

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme == 'https'

    request = Net::HTTP::Head.new(uri.request_uri)
    request['User-Agent'] = 'Mozilla/5.0'

    response = http.request(request)

    response.code.to_i < 400

  rescue StandardError
    false
  end
end
