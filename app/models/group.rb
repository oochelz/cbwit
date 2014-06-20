class Group
  attr_reader :number, :people

  def initialize(number)
    @number = number
    @people = Array.new
  end
end
