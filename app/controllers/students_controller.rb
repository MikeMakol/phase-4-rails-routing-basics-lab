class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.order(grade: :desc)
        render json: students
    end

    def highest_grade
        highest_grade = Student.maximum(:grade)
        highest_graded_student = Student.find_by(grade: highest_grade)
        render json: highest_graded_student
    end
end
