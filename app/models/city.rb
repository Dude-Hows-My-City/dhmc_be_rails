class City < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites

  validates_presence_of :name, :full_name, :summary, :scores, :details
end
