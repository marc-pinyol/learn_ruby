class Timer
  #write your code here
  
  def initialize()
    @seconds = 0
    @time = Time.at(0)
  end

  def seconds
    return @time.to_i
  end

  def seconds=(seconds)
    @time = Time.at(seconds)
  end

  def time_string
    return @time.strftime("%T")
  end
end
