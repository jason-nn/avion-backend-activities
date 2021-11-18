# rspec student_spec.rb

require './student.rb'

describe Student do
    before :each do
        @name = 'Jason Ho'
        @age = 20
        @grades = [90, 95, 100]
        @average = @grades.sum / @grades.length
        @student = Student.new(@name, @age, @grades)
    end

    it 'should hold and return name' do
        expect(@student.name).to eq @name
    end

    it 'should hold and return age' do
        expect(@student.age).to eq @age
    end

    it 'should return average' do
        expect(@student.average).to eq @average
    end
end
