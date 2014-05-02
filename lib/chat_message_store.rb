
class ChatMessageStore
  attr_reader :messages

  def initialize
    @messages = []
  end

  def add_message(name, message)
    @messages << { name: name, message: message }
  end

  def self.instance
    @instance ||= ChatMessageStore.new
  end
end