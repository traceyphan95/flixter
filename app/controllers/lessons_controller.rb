class LessonsController < ApplicationController
  before_action :authenticate_user!

  def create
    @course = current_lesson.section.course(section_params)
    if @current_user.enrolled_in?
      redirect_to current_user_course_path(@course)
    else
      redirect_to root_url, alert: 'Error Message Here'
    end
  end

  def new
    @section = Section.find(params[:section_id])
  end

  def show
  end

  private

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end