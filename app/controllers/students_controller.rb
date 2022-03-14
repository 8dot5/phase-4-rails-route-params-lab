class StudentsController < ApplicationController

  def index
    # students = Student.all
    # render json: students

    # students = Student.find_by(first_name: params[:first_name])
    # render json: students

    # student = Student.where(first_name: params[:first_name], last_name: params[:last_name])
    student = Student.find_by(first_name: params[:first_name], last_name: params[:last_name])
    render json: student
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

end
