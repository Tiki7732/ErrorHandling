# PHASE 2
def convert_to_int(str)
  Integer(str)
rescue ArgumentError
  return nil

end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class CoffeeError < StandardError
  def message
    puts "Yum I love Coffee! But I've had 5 cups today already, can I have a fruit?"
  end 
end

class NotFruitError < StandardError
  def message
    puts "Eeeck! What is that? ScarrrY!"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else
    raise NotFruitError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue CoffeeError => e
    puts e.message
    retry
  rescue NotFruitError => e
    puts e.message
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    if @yrs_known < 5 
      raise ArgumentError.new("We haven't known each other long enough to be besties!")
    end
    if @name.length < 1
      raise ArgumentError.new("What, no name? How can we be besties without knowing your name?")
    end
    if @fav_pastime.length < 1
      raise ArgumentError.new("How can we be besties if we don't have a favorite pastime?")
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


