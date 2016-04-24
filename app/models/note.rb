class Note < ActiveRecord::Base
  validates :content, presence: true
  validates :title, presence: true
  
  belongs_to :Lesson
end
