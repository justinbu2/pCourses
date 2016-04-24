class UsersController < ApplicationController
  def index
    @lessons = Lesson.all
  end
  
  def show
    @cur_user = User.find(params[:id])
    # @lessons = Lesson.all
  end
end
