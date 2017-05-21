require 'spec_helper'

RSpec.describe CodeStats::Gems do
  describe '#count' do
    it 'counts the gems in a given Gemfile' do
      expect(CodeStats::Gems.new('spec/fixtures/Gemfile').count).to eq(4)
    end

    it 'uses the Gems in the current dir by default' do
      expect(File).to receive(:read).with('./Gemfile').and_call_original
      expect(CodeStats::Gems.new().count).to eq(1)
    end
  end
end
