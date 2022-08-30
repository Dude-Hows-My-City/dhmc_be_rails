require 'rails_helper'

RSpec.describe City do
  describe 'Relationships' do
    it { should have_many :favorites }
    it { should have_many(:users).through(:favorites) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:summary) }
    it { should validate_presence_of(:scores) }
    it { should validate_presence_of(:details) }
  end
end
