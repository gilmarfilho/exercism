module BookKeeping
  VERSION = 3
end

# School
class School
  @students = Hash.new { |hsh, key| hsh[key] = [] }

  def add(name, grade)
    @students[grade] << name
    @students[grade].sort!
  end

  def sort
    @students.values.flatten.sort
  end

  def students(grade)
    @students[grade]
  end

  def students_by_grade
    all_students = []
    @students.each do |grade, students|
      next if students.empty?
      students_by_grade = {}
      students_by_grade[:grade] = grade
      students_by_grade[:students] = students
      all_students << students_by_grade
    end
    Hash[all_students.sort_by { |k, _v| k }]
    all_students
  end
end
