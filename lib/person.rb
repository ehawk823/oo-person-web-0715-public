require 'pry'

class Person
  attr_reader :name, :hygiene
  attr_accessor :bank_account

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness
  end

  def happiness= (score)
    @happiness = score
    if score > 10
      @happiness = 10
    elsif score < 0
      @happiness = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def hygiene= (score)
    @hygiene = score
    if score > 10
      @hygiene = 10
    elsif score < 0
      @hygiene = 0
    end
  end

  def bank_account
    @bank_account
  end

  def get_paid (salary)
    @bank_account = bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene=(@hygiene)
    @happiness += 2
    self.happiness=(@happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend (person)
    person.happiness += 3
    self.happiness += 3
    "Hi #{person.name}! It's #{name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == "politics"
      self.happiness= (self.happiness - 2)
      person.happiness= (person.happiness - 2)
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness= (self.happiness + 1)
      person.happiness= (person.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
