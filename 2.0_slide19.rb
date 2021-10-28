class Person
    def initialize(birthday)
        @birthday = birthday
    end

    def age
        month = @birthday.split('/')[0].to_i
        day = @birthday.split('/')[1].to_i
        year = @birthday.split('/')[2].to_i

        if month < Time.new.month
            return Time.new.year - year
        elsif month == Time.new.month
            if day <= Time.new.day
                return Time.new.year - year
            else
                return Time.new.year - year - 1
            end
        else
            return Time.new.year - year - 1
        end
    end
end

jason = Person.new('07/26/2001')
puts jason.age
