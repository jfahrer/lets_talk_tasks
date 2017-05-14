require 'spec_helper'

RSpec.describe CodeStats::Gemfile do
  describe '#gem_count' do
    it 'counts the gems in a given Gemfile' do
      expect(CodeStats::Gemfile.new('spec/fixtures/Gemfile').gem_count).to eq(4)
    end

    it 'uses the Gemfile in the current dir by default' do
      expect(File).to receive(:read).with('./Gemfile').and_call_original
      expect(CodeStats::Gemfile.new().gem_count).to eq(1)
    end
  end
end
