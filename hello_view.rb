require 'mustache'

class HelloView < Mustache
  attr_reader :user_name

  def initialize(user_name = 'World')
    @user_name = user_name
  end
end