# ruby test.rb in terminal to run

require 'test/unit'
require './student.rb'

class StudentTest < Test::Unit::TestCase
    def setup
        # Note that setup and teardown get called around each test method,
        # not before, and after all of the tests in the class get run.
        @name = 'Jason Ho'
        @age = 20
        @grades = [90, 95, 100]
        @average = @grades.sum / @grades.length
        @student = Student.new(@name, @age, @grades)
    end

    def test_that_student_holds_onto_name
        assert_equal @name, @student.name
    end

    def test_that_student_holds_onto_age
        assert_equal @age, @student.age
    end

    def test_that_average_returns_correct_value
        assert_equal @average, @student.average
    end
end
