class WinesController < ApplicationController
 def index
  @available_at = Time.now
  @wines = ["Red Wine", "White Wine", "Cool Wine", "California Wine"]
 end
end