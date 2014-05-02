require 'mongo'

class DocumentStore
  include Mongo

  def initialize
    @mongo_client = MongoClient.new
    @db = @mongo_client.db("web-app-tutorial")
  end

  def [](collection)
    @db[collection]
  end

  def self.instance
    @instance ||= DocumentStore.new
  end
end
