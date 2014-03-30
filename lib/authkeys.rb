require "authkeys/version"
require "authkeys/key"
require "authkeys/key_collection"

module Authkeys
  def self.keys(filename)
    KeyCollection.new(filename)
  end
end
