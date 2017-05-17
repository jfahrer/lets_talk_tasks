module CodeStats
  class Gems
    def initialize(gemfile = './Gemfile')
      @gemfile = gemfile
    end

    def count
      content = File.read(@gemfile)
      matches = content.scan(/^\s*gem\s/)
      matches.size
    end
  end
end

