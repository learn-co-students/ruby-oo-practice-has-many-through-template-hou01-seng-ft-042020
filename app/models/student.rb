#class for Model2 goes here
#Feel free to change the name of the class
# A student has many courses and many professors
# methods
# create student
# list all courses that student is in, done
#  list all professors that a student has done
# if credits are over 120 graduate done
#  if student is certain major list all courses for that major // suggest courses
class Student
    attr_reader :name
    attr_accessor :major, :credits

    @@all= []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(name, major, credits,)
        @name = name
        @year = year
        @major = major
        @credits = :credits
        save
    end

    def courses
        Course.all.select {|c| c.student == self}
    end

    def professors
        courses.map {|c| c.professor}
    end

    def graduate?
        credits_left = 0
        if self.credits >= 120
            "Congratulations, you are eligible for graduation"
        else
            credits_left = 120 - self.credits
            "You have #{credits_left} until graudation"
        end
    end

end
