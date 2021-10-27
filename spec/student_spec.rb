require './lib/student'

describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  describe '#initialize' do
    it 'creates a student object' do
      expect(@student).to be_a Student
    end

    xit 'receives a hash as a parameter' do
      expect(@student.details).to be_a Hash
    end


  end

  describe '#name' do
    it 'returns the name of the student' do
      expect(@student.name).to eq("Morgan")
    end
  end

  describe '#age' do
    it 'returns the age of the student' do
      expect(@student.age).to eq(21)
    end
  end

  describe '#scores' do
    it 'returns the student scores' do
      expect(@student.scores).to be 
    end
  end
  # also tests the scores method.
  describes '#log_score()' do
    it 'can receive and store the students score' do
      @student.log_score(89)
      expect(@student.scores).to eq([89])
    end
    it 'can receive and store more than one student scores' do
      @student.log_score(89)
      @student.log_score(78)
      expect(@student.scores).to eq([89, 78])
    end
  end

  describes '#grade' do
    it 'returns the students GPA' do
      @student.log_score(89)
      @student.log_score(78)
      expect(@student.grade).to eq(83.5)
    end
  end
end
