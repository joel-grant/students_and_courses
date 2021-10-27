require './lib/student'

describe Student do
  describe '#initialize' do
    it 'creates a student object' do
      student = Student.new({name: "Morgan", age: 21})
      expect(student).to be_a Student
    end
  end

  
end
