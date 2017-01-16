module BookKeeping
  VERSION = 3
end

# School
class School
  def initialize
    @students = Hash.new { |hsh, key| hsh[key] = [] }
  end

  def add(name, grade)
    @students[grade] << name
    @students[grade].sort!
  end

  def sort
    @students.values.flatten
  end

  def students(grade)
    @students[grade]
  end

  def students_by_grade
    all_students = []
    @students.each do |grade, students|
      students_by_grade = {}
      students_by_grade[:grade] = grade
      students_by_grade[:students] = students
      all_students << students_by_grade
    end
    all_students.sort_by { |hsh| hsh[:grade] }
  end
end
