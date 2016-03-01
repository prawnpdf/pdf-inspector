require_relative "spec_helper"

describe "PDF::Inspector::Text" do
  context '.analyze_file' do
    let(:contents) { PDF::Inspector::Text.analyze_file(File.dirname(__FILE__) + '/fixtures/text.pdf') }

    it 'registers character_spacing changes' do
      expect(contents.character_spacing).to eq([1, 0])
    end

    it 'registers horizontal_text_scaling changes' do
      expect(contents.horizontal_text_scaling).to eq([110, 100])
    end
  end
end
