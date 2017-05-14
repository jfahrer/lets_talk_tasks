module CodeStats
  class Class
    def initialize(path = '.')
      @path = File.join(File.expand_path(path), '**/*.rb')
    end

    def count
      Dir.glob(@path).reduce(0) { |memo, file| memo += count_classes_in_file(file) }
    end

    private

    def count_classes_in_file(file)
      content = File.read(file)
      matches = content.scan(/^\s*class\s/)
      matches.size
    end
  end
end
