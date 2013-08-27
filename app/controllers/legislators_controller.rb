class LegislatorsController < ApplicationController

def index
  @zip = params[:zip]
  # Takes zip input, searches new API for legislators in that zipcode and returns results
  @legislators = Congress.new.legislators_locate(@zip).results
end

end
