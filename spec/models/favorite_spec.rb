require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'Relationships' do
    it { should belong_to :user }
    it { should belong_to :city }
  end
end
