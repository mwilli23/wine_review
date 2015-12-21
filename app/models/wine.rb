class Wine < ActiveRecord::Base
  scope :bargains, -> { where('year < 1800') }
  scope :by, ->(winery) { where('winery = ?', winery) }
  validates :name, :winery, :year, :country, :varietal, presence: true
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 1500 },
   unless: "year.blank?"
end
