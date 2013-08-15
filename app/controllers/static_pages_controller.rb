class StaticPagesController < ApplicationController
  require 'search_congress'
  def about
  end

  def home
  end

  def submit
    begin
      # require 'search_congress.rb'
      @test_legislator = Nancy.new
    #   @query_text = params[:zip_code]
    #   @apitext = Legislator.new(@query_text)
    end
  end
end
