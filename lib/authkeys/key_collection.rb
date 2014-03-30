module Authkeys
  class KeyCollection
    def initialize(file)
      @file = file
    end

    def each(&block)
      keys.each do |key|
        yield(key)
      end
    end

    private

    def keys
      key_lines.collect do |line|
        Key.new(line)
      end
    end

    def key_lines
      raw_lines.reject {|item| item.strip.empty? || item.strip.start_with?("#") }
    end

    def raw_lines
      file_data.split("\n")
    end

    def file_data
      @file_data ||= File.read(@file)
    end
  end
end
