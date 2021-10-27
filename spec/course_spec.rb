require './lib/student'
require './lib/course'

describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  describe '#initialize' do
    it 'creates a course' do
      expect(@course).to be_a Course
    end
  end

  describe '#name' do
    it 'returns the course name' do
      expect(@course.name).to eq("Calculus")
    end
  end

  describe '#capacity' do
    it 'returns the capacity of the course' do
      expect(@course.capacity).to eq(2)
    end
  end

  describe '#students' do
    it 'returns the name of students enrolled in the course' do
      expect(@course.students).to eq([])
    end
  end

  describe '#full' do
    it 'returns true/false whether the course is full' do
      expect(@course.full?).to be false
    end
  end

  describe '#enroll() & #students' do
    it 'adds a student to the class' do
      course.enroll(@student1)
      course.enroll(@student2)
      expect(course.students).to eq([student1, student2])
    end
  end
end
