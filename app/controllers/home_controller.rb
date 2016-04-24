class HomeController < ApplicationController
  def index
    if current_user
      if Teacher.where(:User_id => current_user.id).blank?
        Teacher.create(User_id: current_user.id)
        current_user.Teacher_id = current_user.id
        current_user.save
      end
      if Student.where(:User_id => current_user.id).blank?
        Student.create(User_id: current_user.id)
        current_user.Student_id = current_user.id
        current_user.save
      end
    end
  end
end
