require 'rails_helper'

RSpec.describe UrbanArea do
  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
