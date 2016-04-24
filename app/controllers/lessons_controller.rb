class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new lesson_params
    @lesson.Teacher_id = current_user.id

    if @lesson.save
      @user = current_user
      redirect_to @current_user
    else
      flash[:error] = @lesson.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def update
    @lesson = Lesson.find(params[:id])
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  private
    def lesson_params
      params.require(:lesson).permit(:title, :intro, :Student_id)
    end
end
