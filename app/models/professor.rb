#class for Model3 goes here
#Feel free to change the name of the class
# A professor has many students and many courses
# methods
# create professor
# list all professor courses done
# list all students in coures done
# if year experience is greater than __ congratulate on tenure eligibility done
class Professor
    attr_reader :name
    attr_accessor :discipline, :year_experience

    @@all= []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(name, discipline, year_experience)
        @name = name
        @discipline = discipline
        @year_experience = year_experience
        save
    end

    def courses
        Course.all {|c| c.professor == self}
    end

    def students
        courses {|c| c.student}
    end

    def end_of_year
        year_experience += 1
    end

    def tenure?
        years_left = 0
        if year_experience >= 7
            "Congratulations, you are eligible for tenure"
        else
            years_left = 7 - year_experience
            "You have #{years_left} year(s) until you are eligible for tenure"
        end
    end
end
