class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(new_happy)
      @happiness = new_happy
      if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      end
  end

  def hygiene=(new_hygiene)
      @hygiene = new_hygiene
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      end
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene+4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness+2)
    self.hygiene=(@hygiene-3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friendPerson)
     self.happiness=(@happiness+3)
     friendPerson.happiness=(friendPerson.happiness+3)
     "Hi #{friendPerson.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friendPerson, topic)
    case topic
    when "politics"
      self.happiness=(@happiness-2)
      friendPerson.happiness=(friendPerson.happiness-2)
      return "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness=(@happiness+1)
      friendPerson.happiness=(friendPerson.happiness+1)
      return "blah blah sun blah rain"
    end
    return "blah blah blah blah blah"
  end

end
