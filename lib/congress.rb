class Legislator
  attr_accessor :apitext

  def initialize(apitext)
    @apitext = apitext
  end
# returns title(sen, rep), name, state, party (d,r) and end of term
  def name
    apitext["title"] + apitext["first_name"] + apitext["last_name"] +
    apitext["state_name"] + apitext["party"] + apitext["term_end"]
  end

# contact form, social media
  def contact
    apitext["contact_form"] + apitext["twitter_id"] + apitext["phone"]
  end

# don't see a photo after all TODO [where to find photo?]
  # def photo
  # end
end

# class Bills
#   def id
#   end

#   def chamber
#   end

#   def official title
#   end

#   def urls
#   end

#   def dates
#   end

#   def sponsor_id
#   end
# end

# class VoteRecord < Legislator < Bills
#   def legislator
#   end

#   def bill
#   end

#   def record
#   end

#   def date
#   end
# end

# class Vote < Legislator < Bills
#   def legislator
#   end

#   def bill
#   end

#   def date
#   end


# end
# ----------------------------------------------------------------------
# Should include a picture of each legislator
# different format of data?
# class Picture < Fetch
# end

# ----------------------------------------------------------------------
#  Demonstrates that Congress gem returns legislator information.
#  Q:  Why do I need to require congress and ap now...should be at top?
require 'awesome_print'
require 'congress'

Congress.key = "6e58b9075b9f4244aea471ee0e066e19"

legislators = []

Congress.legislators.each do |legislator|
  legislators << Legislator.new(legislator)
end

legislators.map{|legislator| ap legislator }

# run in terminal by typing ruby congress.rb while in the lib folder




