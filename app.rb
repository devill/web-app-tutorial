require 'sinatra'

get '/' do
  'Hello world'
end

get '/goodbye' do
  'Good bye'
end

get '/hello/:name' do
  "Hello #{params[:name]}!"
end