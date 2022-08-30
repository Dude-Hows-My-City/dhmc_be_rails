class User < ApplicationRecord
  has_many :favorites
  has_many :cities, through: :favorites

  validates_presence_of :username
end
