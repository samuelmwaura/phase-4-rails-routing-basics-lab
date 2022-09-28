Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'students', to: 'students#index'  #This is a route to display all the students.
  get 'students/grades', to: 'students#grades' #A route to display all thr grades
  get "students/highest-grade", to: 'students#highest_grade'  #route for finding the highest grade


end
