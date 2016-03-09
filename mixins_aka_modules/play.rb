require './video'
require './song'
require './photo'

class Play

  video = Video.new
  video.add_comment('Cool slow motion effect!')
  video.add_comment('Weird ending!')

  song = Song.new
  song.add_comment('Awesome beat!')

  photo = Photo.new
  photo.add_comment('Beautiful Colours.')

  p video.comments, song.comments, photo.comments
  video.play
  song.play
  photo.show
end