# modules tend to be used to describe one aspect of an objects behaviour
# therefore convention is to use a description as the module name

module AcceptsComments

  attr_reader :comments

  # module is the non-instantiable type that gets 'mixed into' classes i.e. mixin
  # in a class we could use the initialize method, however for a module you shouldn't
  # a mixin literally gets inserted into the class which 'included' it
  # if that classes initialize method is called, it would override the one in the mixin leading to unexpected results
  def comments
    # if @comments
    #   @comments
    # else
    #   @comments = []
    # end

    # use of `or` '||', replaces the need for if else
    # uses falsy again, false or nil will return the value after the 'or' block
    # @comments = @comments || []

    # further shorthand to above, returns @comments unless its nil or false (falsy)
    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end

end