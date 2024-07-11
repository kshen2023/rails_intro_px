class Subject < ApplicationRecord
  has_many :teacher_subjects
  has_many :teachers, through: :teacher_subjects

  validates :subject_name, presence: true, length: { maximum: 255 }
  validates :subject_description, length: { maximum: 1000 }
  validates :subject_code, presence: true, uniqueness: true, length: { maximum: 10 }
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "subject_code", "subject_description", "subject_name", "updated_at"]
  end
end
