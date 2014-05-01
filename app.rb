require 'sinatra'

require_relative 'hello_view'
require_relative 'fizz_buzz_view'

get '/' do
  HelloView.new.render
end

get '/hello/:name' do
  HelloView.new(params[:name]).render
end

get '/fizzbuzz/:number' do
  FizzBuzzView.new(params[:number]).render
end