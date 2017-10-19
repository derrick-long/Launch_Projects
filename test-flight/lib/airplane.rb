class Airplane
  attr_reader :type, :horsepower, :wing_loading
  def initialize(type,wing_loading,horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @started = "no"
    @status = "landed"
  end

def start #probably not so good
  if @started == "no"
    @started = "Airplane started"
  else
  @started =  "The plane is already on"
  end
  @started
end

def takeoff
  message = ""
  if @started == "no"
  message += "Airplane not started, please start" #extract this out into a status variable most likely
  else
    @status = "flying"
    message += "Airplane launched."
  end
  message
end

def land
    message = ""
  if @started == "no"
    message +=  "Airplane not started, please start"
  elsif @status ==  "landed"
    message += "The plane is already on the ground!"
  elsif @status == "flying"
    message += "Airplane landed!"
end
message
end



end
