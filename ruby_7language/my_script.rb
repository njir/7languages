class MegaGreeter
  attr_accessor :names

  def initialize(name = "world")
    @names = name
  end

  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}"
      end
    else
      puts "Hello #{@names} not each"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Goodbye #{@names.join(", ")}. comeback soon!"
    else
      puts "good bye #{@names}. not join"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  mg.names = ["sds"," adsada", "sdsdssd", "sdsds", "Sdsds"]
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye
end