# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:3000', '127.0.0.1:3000' 
      headers: :any, 
      methods: [:get, :post, :patch, :put, :delete, :options, :head], 
      credentials: false # You might set this to true if you need to support credentials
  end
end