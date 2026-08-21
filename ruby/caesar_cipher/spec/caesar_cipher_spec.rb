# Caesar cipher unit tests
require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'Output verification' do
    it 'returns a string shifted by x ammount along the alphabet' do
      expected_output = 'Rcvo v nomdib!'
      expect(caesar_cipher('What a string!', 5)).to eq(expected_output)
    end

    it 'loops from Z to A' do
      expected_output = 'stuv'
      expect(caesar_cipher('wxyz', 4)).to eq(expected_output)
    end

    it 'returns same case' do
      expected_output = 'YzAb'
      expect(caesar_cipher('AbCd', 2)).to eq(expected_output)
    end
  end
end
