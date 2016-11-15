class AuthpartyConnect

  # Initiate the Connection Object
  def self.initialize(api_key, api_secret, host)
    @@connection = Connection.new(api_key, api_secret, host)
  end

  require 'authparty-connect/connection.rb'
end
