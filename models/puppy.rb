class Puppy

  attr_accessor :name, :age
  attr_reader :breed

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

end
