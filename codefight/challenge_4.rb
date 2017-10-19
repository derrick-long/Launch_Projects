def validate_brussels(title)
  unless title.downcase.include?('brussels') && title.downcase.include?('sprouts')
    puts "butthole"
  end
end

validate_brussels('sprouts brussels')
