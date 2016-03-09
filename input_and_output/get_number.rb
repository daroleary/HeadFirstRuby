class GetNumber

  # Get My Number Game
  # Written by: you!

  puts "Welcome to 'Get My Number!'" # put's string, adds a newline

  # Get the player's name, and great them.
  print "What's your name? " # prints line, no newline
  input = gets # get string
  # puts input.inspect # call to gets adds a new line character
  name = input.chomp # removes new line character
  puts "Welcome, #{name}!" # interpolate or substitute variable with string using '#{var}'

  # Store a random for the player to guess
  puts "I've got a random number between 1 and 100"
  puts "Can you guess it?"
  target = rand(100) + 1

  # Track how many guesses the player has made.
  number_of_guesses = 0

  # Track whether the player has guessed correctly.
  guessed_it = false

  until number_of_guesses == 10 || guessed_it

    number_of_guesses += 1

    puts "You've got #{10 - number_of_guesses} guesses left"
    print "Make a guess: "
    guess = gets.to_i

    # Compare the guess to the target.
    # Print the appropriate message.
    if guess < target
      puts "Oops, Your guess was LOW."
    elsif guess > target
      puts "Oops, Your guess was HIGH."
    else
      puts "Good job, #{name}!"
      puts "You guessed my number in #{number_of_guesses} guesses!"
      guessed_it = true
    end

  end


  # If player ran out of turns, tell them what the number was.
  unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target}.)"
  end
end