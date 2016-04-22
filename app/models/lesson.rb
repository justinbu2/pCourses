class Lesson < ActiveRecord::Base
  belongs_to :Teacher
  belongs_to :Student
  has_many :Note
end
