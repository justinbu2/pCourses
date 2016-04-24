class Lesson < ActiveRecord::Base
  validates :title, presence: true
  validates :intro, presence: true
  validates :Student_id, presence: true

  belongs_to :Teacher
  belongs_to :Student
  has_many :Note
end
