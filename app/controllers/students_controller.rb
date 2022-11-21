class StudentsController < ApplicationController

  def index 
    if params[:name]
    students = Student.where('lower(last_name) = ? OR lower(first_name) = ?', params[:name].downcase, params[:name].downcase)
    else 
      students = Student.all
    render json: students
    end
  end


  def show
    student = Student.find(params[:id])
  render json: student
  end

end
