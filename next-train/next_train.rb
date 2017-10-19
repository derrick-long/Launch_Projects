#When a time is specified that we want to leave the office
#system should inform us of the next available train
#train times in military time
#little sloppy I think, but hopefully this works!
train_times = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 24]

begin
  puts "What time are you leaving the office?"
  leaving = Float(gets.chomp)
  train_time = train_times.find {|time| time >= leaving}
  train = train_times.index(train_time) + 1
  puts "You should take Train  #{train}  leaving  at  #{train_time}!"

    if train == 12
      puts  """ ***DON'T STOP...BELIEVIN'!*** \n

      Just a small town girl
      Living in a lonely world
      She took the midnight train going anywhere
      Just a city boy
      Born and raised in South Detroit
      He took the midnight train going anywhere \n

      A singer in a smoky room
      A smell of wine and cheap perfume
      For a smile they can share the night
      It goes on and on and on and on \n

      Strangers waiting, up and down the boulevard
      Their shadows searching in the night
      Streetlights people, living just to find emotion
      Hiding, somewhere in the night. \n"""

    end

rescue
  puts "Please enter a valid time: "
retry
end
