# ----- Inheritance ----- #

class Person
    def initialize(birthday)
        @birthday = birthday
    end

    def age
        if month < current_month
            return current_year - year
        elsif month == current_month
            if day <= current_day
                return current_year - year
            else
                return current_year - year - 1
            end
        else
            return current_year - year - 1
        end
    end

    def chinese_zodiac
        return zodiacs[year % 12]
    end

    private

    def month
        @birthday.split('/')[0].to_i
    end

    def day
        @birthday.split('/')[1].to_i
    end

    def year
        @birthday.split('/')[2].to_i
    end

    def current_month
        Time.new.month
    end

    def current_day
        Time.new.day
    end

    def current_year
        Time.new.year
    end

    def zodiacs
        %w[monkey rooster dog pig rat ox tiger rabbit dragon snake horse goat]
    end
end

class OldPerson < Person
    def age
        return 50
    end
end

class VeryOldPerson < Person
    def age
        return 100
    end
end

arwie = Person.new('02/07/1995')
puts arwie.age

arwie = OldPerson.new('02/07/1995')
puts arwie.age

arwie = VeryOldPerson.new('02/07/1995')
puts arwie.age

# ----- Duck-typing ----- #

class Duck
    def walks
        'like a duck'
    end

    def swims
        'like a duck'
    end

    def quacks
        'like a duck'
    end
end

class Bird
    def walks
        'like a duck'
    end

    def swims
        'like a duck'
    end

    def quacks
        'like a duck'
    end
end

class Animal
    def walks(animal)
        animal.walks
    end

    def swims(animal)
        animal.swims
    end

    def quacks(animal)
        animal.quacks
    end
end

puts

puts Animal.new.walks(Duck.new)
puts Animal.new.swims(Duck.new)
puts Animal.new.quacks(Duck.new)

puts

puts Animal.new.walks(Bird.new)
puts Animal.new.swims(Bird.new)
puts Animal.new.quacks(Bird.new)
