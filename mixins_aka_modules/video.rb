require './clip'
require './accepts_comments'

class Video < Clip
  include AcceptsComments

  attr_accessor :resolution
end