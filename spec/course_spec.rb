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
end
