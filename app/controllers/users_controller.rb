class UsersController < ApplicationController
  def index
    @lessons = Lesson.all
  end
  
end
