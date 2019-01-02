class Country < ApplicationRecord
  belongs_to :area
  has_many :cities
end
