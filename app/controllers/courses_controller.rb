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
    @course = Course.new(course_params,)
    if @course.save
      session[:course_id] = @course.id
      redirect_to course_path(@course)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
