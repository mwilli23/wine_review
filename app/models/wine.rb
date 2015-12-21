class Wine < ActiveRecord::Base
  validates :name, :winery, :year, :country, :varietal, presence: true
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 1500 },
   unless: "year.blank?"
end
