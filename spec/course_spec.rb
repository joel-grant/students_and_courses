require './lib/student'
require './lib/course'

describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
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


  end
end
