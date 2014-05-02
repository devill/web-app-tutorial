require 'sinatra'

require_relative 'views/chat_view'
require_relative 'views/fizz_buzz_view'
require_relative 'views/hello_view'

get '/' do
  HelloView.new.render
end

get '/hello/:name' do
  HelloView.new(params[:name]).render
end

get '/fizzbuzz/:number' do
  FizzBuzzView.new(params[:number]).render
end

get '/chat' do
  ChatView.new.render
end

post '/chat' do
  "#{params[:name]} - #{params[:message]}"
end