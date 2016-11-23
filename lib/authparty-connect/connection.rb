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

  # Get Login Path (For Official Authparty Login Pages)
  def login_path
    puts HTTParty.get(@base_api_url + 'providers/authorize_url?api_key=' + @credentials[:api_key])
  end

  # Acquire QR-code
  def authorize_qrcode
    @qrcode = HTTParty.get(@base_api_url + 'providers/authorize_qrcode?api_key=' + @credentials[:api_key] + '&callback_url=' + @base_api_url + 'providers/authorize_login')
    return @qrcode
  end

  protected
  def response_code(response)
    return response.code
  end
end
