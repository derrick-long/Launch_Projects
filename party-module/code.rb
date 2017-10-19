require_relative 'havoc_error.rb'

module PartyGoer

  def drink(number_of_drinks)
    if number_of_drinks < 4
      true
    else
      false
    end
  end

  def sing
    "This is how we do it"
  end

  def cause_havoc
    raise PersonalizedHavocError
  end

  def invited?
    true
  end


end
