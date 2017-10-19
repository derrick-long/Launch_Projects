class CustomError < StandardError

  def initialize(message = "Your e-mail is missing dawg!")
    super
  end
end
