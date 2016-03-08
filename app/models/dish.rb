class Dish < ActiveRecord::Base
  validates :name, true, :uniqueness true
  belongs_to :course_id

  def course_name
    course && course.name
  end
end
