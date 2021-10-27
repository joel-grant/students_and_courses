class Course
  attr_accessor :name, :capacity, :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    @students.size == @capacity
  end

  def enroll(student)
    @students.push(student)
  end 
end
