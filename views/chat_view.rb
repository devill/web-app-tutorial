require 'mustache'

class ChatView < Mustache
  self.template_path = File.dirname(__FILE__)
end