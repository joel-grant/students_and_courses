class Student
  attr_accessor :name, :age, :scores

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @scores = []
  end

  def log_score(score)
    @scores.push(score)
  end

  def grade
    gpa = (@scores.sum / @scores.size.to_f).to_f
  end
end
