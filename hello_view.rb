require 'mustache'

class HelloView < Mustache
  def initialize(user_name = 'World')
    @user_name = user_name
  end

  def user_name
    @user_name
  end
end