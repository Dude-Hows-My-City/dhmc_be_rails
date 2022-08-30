require 'rails_helper'

RSpec.describe City do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:summary) }
    it { should validate_presence_of(:scores) }
    it { should validate_presence_of(:details) }
    it { should validate_presence_of(:salaries) }
  end
end
