class StudentsController < ApplicationController
    def index
        render json: Student.all  #returns all the student that are in the students table in the database. The Student is the model name .
    end

    def grades
        render json: Student.order(grade: :desc)
    end

end
