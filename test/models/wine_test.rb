require 'test_helper'

class WineTest < ActiveSupport::TestCase
  def setup
  @wine = Wine.new
end

test 'name remembers its value' do
  @wine.name = 'Francis Coppolla'
  assert_equal 'Francis Coppolla', @wine.name
end

test 'author remembers its value' do
  @wine.winery = 'Diamond Collection'
  assert_equal 'Diamond Collection', @wine.winery
end

test 'pages remembers its value' do
  @wine.year = 2009
  assert_equal '2009', @wine.year
end

test 'persistence works properly' do
  created_wine = Wine.create(name: 'Francis Coppolla', winery: 'Diamond Collection', year: '2009', country:'France', varietal: 'Claret')
  found_wine = Wine.find created_wine.id
  assert_not_nil found_wine
  assert_equal 'Francis Coppolla', found_wine.name
  assert_equal 'Diamond Collection', found_wine.winery
  assert_equal '2009', found_wine.year
end

test "update from a fixture" do
  wine = wines(:Flop)
  delta = 0.001
  assert_in_delta '2010', wine.year, delta
  wine.year = 2013
  Wine.save
  updated = Wine.find(wine.id)
  assert_in_delta 2013, updated.year, delta
end

end


