require 'sinatra'

require_relative 'hello_view'

get '/' do
  HelloView.new.render
end

get '/hello/:name' do
  HelloView.new(params[:name]).render
end