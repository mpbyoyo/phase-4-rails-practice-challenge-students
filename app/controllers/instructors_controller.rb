class InstructorsController < ApplicationController

  def index
    instructors = Instructor.all
    render json: instructors
  end

  def create
    instructor = Instructor.create(name: params[:name])
    render json: instructor
  end

  def show
    instructor = find_inst
    render json: instructor
  end

  def update
    instructor = find_inst.update!()
  end

  def destroy
    
  end

  private

  def find_inst
    Instructor.find(params[:id])
  end
end
