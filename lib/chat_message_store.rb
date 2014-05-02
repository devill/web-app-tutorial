require_relative '../document_store'

class ChatMessageStore
  def initialize
    @collection = DocumentStore.instance['chat_messages']
  end

  def messages
    @collection.find.sort(:_id).to_a
  end

  def add_message(name, message)
    @collection.insert({'name' => name, 'message' => message})
  end

  def self.instance
    @instance ||= ChatMessageStore.new
  end
end