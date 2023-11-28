require 'net/http'
require 'uri'
require 'json'

class Search < ApplicationRecord

  def fetch_api_data
    uri = URI('http://localhost:3000/api/v1/address')
    request = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
    request.body = { q: address }.to_json

    response = Net::HTTP.start(uri.hostname, uri.port) do |http|
      http.request(request)
    end

    handle_response(response)
  end

  private

  def handle_response(response)
    if response.is_a?(Net::HTTPSuccess)
      self.data = JSON.parse(response.body)['data']
      self.cached = self.data['postal_code']['temperature']['cached']
      self.error = nil
    else
      self.error = JSON.parse(response.body)['errors']
      self.data = nil
    end
  rescue JSON::ParserError => e
    self.error = { message: 'Invalid JSON format in response', details: e.message }
  end
end
