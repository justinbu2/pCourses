class Student < ActiveRecord::Base
  belongs_to :User
  has_many :Lesson
end
