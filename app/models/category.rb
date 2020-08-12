class Category < ApplicationRecord
  has_many :courses
  belongs_to :vertical
end
