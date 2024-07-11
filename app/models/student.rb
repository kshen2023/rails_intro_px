class Student < ApplicationRecord
  has_many :section_students
  has_many :sections, through: :section_students
  validates :student_name, presence: true, length: { maximum: 255 }
  validates :student_age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 5, less_than_or_equal_to: 18 }
  validates :student_grade, presence: true, inclusion: { in: %w[A B C D E F] }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "student_age", "student_grade", "student_name", "updated_at"]
  end

end
