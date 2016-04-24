class Lesson < ActiveRecord::Base
  validates :title, presence: true
  validates :intro, presence: true
  validates :Student_id, presence: true
  validate :Student_id_not_equal_current_id

  def Student_id_not_equal_current_id
  	@errors.add(:Student_id, "should not be the same as your id") if self.Student_id == self.Teacher_id
  end

  belongs_to :Teacher
  belongs_to :Student
  has_many :Note
end
