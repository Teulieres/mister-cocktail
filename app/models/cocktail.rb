class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :ingredients, dependent: :destroy
  validates :name, presence: :true
  validates :name, uniqueness: :true

end
