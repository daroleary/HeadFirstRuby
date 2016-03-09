require './accepts_comments'

class Photo
  include AcceptsComments

  def show
    puts "Displaying #{object_id}..."
  end
end