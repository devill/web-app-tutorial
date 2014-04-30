require 'sinatra'

require_relative 'hello_view'

get '/' do
  HelloView.new.render
end

get '/goodbye' do
  'Good bye'
end

get '/hello/:name' do
  "Hello #{params[:name]}!"
end