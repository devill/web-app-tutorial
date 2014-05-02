require 'mustache'

require_relative '../lib/chat_message_store'

class ChatView < Mustache
  self.template_path = File.dirname(__FILE__)

  def messages
    ChatMessageStore.instance.messages
  end
end