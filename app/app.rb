require "sinatra"

configure {
  set :server, :puma
}

class App < Sinatra::Base

  get '/' do
    name = ENV['USERNAME'] || 'NoName'
    "Hello #{name}"
  end

  get '/health' do
    "Im Alive, TimeStamp: #{Time.now}"
  end

end
