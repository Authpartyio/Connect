Gem::Specification.new do |g|
  g.name          = 'authparty-connect'
  g.version       = '0.0.0'
  g.date          = '2016-11-14'
  g.summary       =
    'Easily add blockchain-based authorization and identity management to your service.'
  g.authors       = ['Matthew Reichardt']
  g.email         = 'matthewjames3@protonmail.com'
  g.files         =
    ['lib/authparty-connect.rb', 'lib/authparty-connect/connection.rb']
  g.homepage      =
    'http://authparty.io'
  g.license       = 'MIT'
  g.add_runtime_dependency 'json', ['= 2.2.2']
  g.add_runtime_dependency 'httparty', ['= 0.14.0']
end
