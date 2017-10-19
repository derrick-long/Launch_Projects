


def greeting(name, language = nil)
  random_greetings = ["Hi", "Yo", "Salutations", "Howdy"]
  if language == 'spanish'
    puts "Hola #{name}!"
  elsif language == 'italian'
    puts "Ciao #{name}"
  elsif language == 'french'
    puts "Bonjour #{name}!"
  else
    puts "#{random_greetings.sample} #{name}!"
  end
end
