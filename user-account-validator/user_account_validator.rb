require_relative 'custom_error.rb'

class UserAccountValidator
  attr_reader :email, :name, :username
  def initialize(fields)
    @email = fields[:email]
    @name = fields[:name]
    @username = fields[:username]
  end

  def email_missing
    if @email == nil
      raise CustomError
    end
  end

  def email_symbol_missing
    unless @email.include?('@')
      raise 'You need an @ symbol in your e-mail.'
    end
  end

  def username_missing
    if @username == nil
      raise 'username is missing!'
    end
  end

end
