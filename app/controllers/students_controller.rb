class StudentsController < ApplicationController
    def index
        render json: Student.all  #returns all the student that are in the students table in the database. The Student is the model name .
    end

    def grades
        render json: Student.order(grade: :desc)  #students ordered in order of their grades
    end

    def highest_grade  #display the highest grade
        render json: Student.find_by(grade: Student.maximum(:grade))  #first gets the value of the highest grade and then uses the find by method to get the one student with the value in their grade attribute
    end

end
