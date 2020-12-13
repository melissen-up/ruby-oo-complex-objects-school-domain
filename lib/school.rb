require 'pry'

class School

    attr_accessor :roster

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        roster[student_grade] ||= []
        roster[student_grade] << student_name
    end

    def grade(grade_param)
        roster[grade_param]      
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, students_in_grade|
            sorted_roster[grade] = students_in_grade.sort
        end
        sorted_roster
    end

end


# binding.pry
# 0