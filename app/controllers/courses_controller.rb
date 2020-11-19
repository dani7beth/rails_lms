class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    #bad not sanitizing params but should work
    #or doing error checking
    @course = Course.create(course_params)
    if @course.save
      redirect_to @course
    else
      render :new
    end
  end

  private
  def course_params
    params.require(:course).permit(:name)
  end

end
