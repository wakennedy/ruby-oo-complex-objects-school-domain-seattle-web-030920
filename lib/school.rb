require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        list = {}
        roster.each do |grade, students|
            list[grade] = students.sort
        end
        list
    end


end
