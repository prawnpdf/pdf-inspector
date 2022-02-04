# frozen_string_literal: true

require_relative 'spec_helper'

describe 'PDF::Inspector::Text' do
  context '.analyze_file' do
    let(:contents) do
      PDF::Inspector::Text.analyze_file(
        File.dirname(__FILE__) + '/fixtures/text.pdf'
      )
    end

    it 'registers character_spacing changes' do
      expect(contents.character_spacing).to eq([1, 0])
    end

    it 'registers horizontal_text_scaling changes' do
      expect(contents.horizontal_text_scaling).to eq([110, 100])
    end
  end
end
