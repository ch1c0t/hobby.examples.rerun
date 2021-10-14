require 'hobby'

class LoginApp
  include Hobby

  get do
    response.redirect '/admin'
  end
end

class AdminApp
  include Hobby

  get do
    'Admin app'
  end
end

class App
  include Hobby

  map '/login', LoginApp.new
  map '/admin', AdminApp.new

  use Rack::ContentType, 'text/plain'

  get do
    'Root app'
  end
end
