require 'httparty'
require 'json'

class AuthpartyConnect::Connection
  def initialize(api_key, api_secret, host)
    @base_api_url = 'http://' + host.to_s + '/api/v1/'
    @credentials = {:api_key => api_key.to_s, :api_secret => api_secret.to_s}
  end

  def list_providers
    puts HTTParty.get(@base_api_url + 'providers')
  end

  def login_path
    puts HTTParty.get(@base_api_url + 'providers/authorize_url?api_key=' + @credentials[:api_key])
  end

  protected
  def response_code(response)
    return response.code
  end
end
