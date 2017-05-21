require 'spec_helper'

RSpec.describe CodeStats::Classes do
  describe '#count' do
    it 'counts the classes in the given path' do
      expect(CodeStats::Classes.new('spec/fixtures/').count).to be(3)
    end
  end
end
