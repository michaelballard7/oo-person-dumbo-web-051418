<<<<<<< HEAD
# your code goes here
require 'pry'

class Person
  attr_accessor  :bank_account, :hygiene
  attr_reader :name, :happiness

  def initialize (name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
  end

  def happiness=(index)
    @happiness = index
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(index)
    @hygiene = index
    @hygiene = 10 if @hygiene >10
    @hygiene = 0 if @hygiene < 0
=======
require 'pry'

class Person
  attr_accessor  :bank_account, :happiness
  attr_writer :hygiene
  attr_reader :name

  def initialize (name, bank_account=25, happiness=8, hygiene=8)
    @name=name
    @bank_account=bank_account
    @happiness=happiness
    @hygiene=hygiene
>>>>>>> fa4806bfe87106dabe395b34fff74aa692ba9322
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary.to_i
<<<<<<< HEAD
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene +=4
=======
    return "All about the benjamins"
  end

  def take_bath
    @hygiene += 4
>>>>>>> fa4806bfe87106dabe395b34fff74aa692ba9322
    return  "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
<<<<<<< HEAD
    self.hygiene -= 3
    self.happiness += 2
=======
    @hygiene -= 3
    @happiness += 2
>>>>>>> fa4806bfe87106dabe395b34fff74aa692ba9322
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
<<<<<<< HEAD
    return  "Hi #{friend.name}! It's #{self.name}. How are you?"
=======
    return  "Hi #{self.name}. It's #{friend.name}! How are you?"
>>>>>>> fa4806bfe87106dabe395b34fff74aa692ba9322
  end

  def start_conversation(leader,topic)
    if topic=="politics"
<<<<<<< HEAD
      leader.happiness-=2
      self.happiness-=2
=======
      leader.happiness-=1
      self.happiness-=1
>>>>>>> fa4806bfe87106dabe395b34fff74aa692ba9322
      return "blah blah partisan blah lobbyist"
    elsif topic =="weather"
      leader.happiness+=1
      self.happiness+=1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
<<<<<<< HEAD
=======

  jee=Person.new("Jee", 25,15,15)

  michael=Person.new("Michael", 25,15,15)

  puts "#{jee.happiness}"
  puts "#{michael.happiness}"
  p jee.call_friend(michael)

  puts "#{jee.happiness}"
  puts "#{michael.happiness}"

  jee.call_friend(michael=Person.new("g", 25,15,15))

  p jee.start_conversation(michael,"cats")
>>>>>>> fa4806bfe87106dabe395b34fff74aa692ba9322
