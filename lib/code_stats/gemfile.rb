module CodeStats
  class Gemfile
    def initialize(gemfile = './Gemfile')
      @gemfile = gemfile
    end

    def gem_count
      content = File.read(@gemfile)
      matches = content.scan(/^\s*gem\s/)
      matches.size
    end
  end
end

