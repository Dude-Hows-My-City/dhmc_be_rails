class City < ApplicationRecord
  validates_presence_of :name, :full_name, :summary, :scores, :details, :salaries
end
