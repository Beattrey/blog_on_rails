require 'rails_helper'

describe Comment do
  describe 'validation' do
    it { should validate_presence_of :body }
  end
  describe 'associations' do
    it { should belong_to :article }
  end
end


