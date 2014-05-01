require 'mustache'

class HelloView < Mustache
  self.template_path = File.dirname(__FILE__)

  attr_reader :user_name

  def initialize(user_name = 'World')
    @user_name = user_name
  end
end