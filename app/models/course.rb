#class for Model1 goes here
#Feel free to change the name of the class
#A course has many students and one professor, this is the joiner
#methods
# create course done
# enroll students done
# list all students in course done
# pass course/fail course done
class Course
    attr_reader :name
    attr_accessor :professor, :credit_amount, :student

    @@all= []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(course_name, professor, student, credit_amount)
        @course_name = course_name
        @level = level
        @professor = professor
        @credit_amount = credit_amount
    end

    def enroll_student(student)
        Course.new(self.name, self.professor, student, self.credit_amount)
    end

    def pass_course
        self.student.credits += self.credit_amount
    end

    def fail_course
        "Please reenroll in the course"
    end

end
