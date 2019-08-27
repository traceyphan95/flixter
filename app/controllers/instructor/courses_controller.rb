class Instructor::CoursesController < ApplicationController
  before_action :authenticate_user!

  def new
    @course = Course.new
  end

  def create
    @course = current_user.courses.create(course_params)
    if @course.valid?
      redirect_to instructor_course_path(@course)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @course = current_course
  end

  private

  helper_method :current_course
  def current_course
    @current_course ||= Course.find(params[:id])
  end

  def course_params
    params.require(:course, :image).permit(:title, :description, :cost)
  end

end