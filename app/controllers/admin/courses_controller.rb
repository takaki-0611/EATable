class Admin::CoursesController < ApplicationController
  def index
    @courses = Course.page(params[:page]).per(5)
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end
  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "コースを新規登録しました"
      redirect_to admin_course_path
    else
      flash[:alert] = "登録内容に不備があります"
      render :index
    end
  end
  def update
    if @course.save
      flash[:notice] = "コースの編集が完了しました"
      redirect_to admin_course_path
    else
      flash[:alert] = "コースの編集内容に不備があります"
      render :index
    end
  end

  def destroy
  end

  private

  def courses_params
    params.require(:course).permit(:name, :totalpayment, :is_booked, :rest_id)
  end
end
