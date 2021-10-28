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

jason = Person.new('07/26/2001')

puts jason.age
puts jason.chinese_zodiac
