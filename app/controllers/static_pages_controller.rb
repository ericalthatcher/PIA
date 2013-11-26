require 'search_congress'

class StaticPagesController < ApplicationController
  def about
  end

  def home
  end

#  creates new instance of Nancy class, which allows the return of results
#  for Nancy Pelosi.
  def submit
    begin
      @test_legislator = Nancy.new
    end
  end
end