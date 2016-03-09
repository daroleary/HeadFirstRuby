require './clip'
require './accepts_comments'

class Song < Clip
  include AcceptsComments # Mix in the "comments" and add the "add_comment" method

  attr_accessor :beats_per_minute
end