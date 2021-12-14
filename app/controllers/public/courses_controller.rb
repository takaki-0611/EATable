class Public::CoursesController < ApplicationController
  def index
    @total_courses = Course.all
    @courses = Course.all.page(params[:page]).per(8)
  end
  def show
    @course = Course.find(params[:id])
  end

  private

  def courses_params
    params.require(:course).permit(:name, :totalpayment, :is_booked, :rest_id)
  end
end
