require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

lauren = Student.new("Lauren", "Computer Science", 110)
kristie = Student.new("Kristie", "Psychology", 43)
ava = Student.new("Ava", "Engineering", 32)

brown = Professor.new("Dr. Brown", "Psychology", 3)
williams = Professor.new("Dr. Williams", "Humanities", 5)
peatree = Professor.new("Dr. Peatree", "Engineering", 7)
birts = Professor.new("Dr. Birts", "Computer Science", 2)

datastruc = Course.new("Data Structure", birts, lauren, 3)
compone = Course.new("Computer Science 101", birts, lauren, 4)
eng = Course.new("Engineering 101", peatree, lauren, 4)
psy = Course.new("Psychology", brown, kristie, 3)
soc = Course.new("Sociology", williams, kristie, 3)
eng2 = Course.new("Engineering 101", peatree, ava, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

