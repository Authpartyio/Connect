require 'httparty'
require 'json'

class AuthpartyConnect::Connection
  def initialize(api_key, api_secret, host)
    @auth_url =  'http://' + host.to_s + '/api/'.to_s
    @credentials = {:api_key => api_key.to_s, :api_secret => api_secret.to_s}
  end

  def connect!
    puts 'Connecting to Authparty network....'
    puts 'Connecting with: ' + @auth_url

    # Make HTTP Request To Authparty host
    response = HTTParty.get(@auth_url)
    puts "Authparty Request: #{response_code(response)}"
    puts response.body
  end

  # Send Authorization Request to Authparty Server
  def login_path
    puts @auth_url + 'authorize?api_key=' + @credentials[:api_key]
  end

  protected
  def response_code(response)
    return response.code
  end
end
