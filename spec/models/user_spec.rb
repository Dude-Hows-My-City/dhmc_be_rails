require 'rails_helper'

RSpec.describe User do
  describe 'Relationships' do
    it { should have_many :favorites }
    it { should have_many(:cities).through(:favorites) }
  end

  describe 'validations' do
    it { should validate_presence_of(:username) }
  end
end
