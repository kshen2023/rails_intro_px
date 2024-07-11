class Teacher < ApplicationRecord
  has_many :teacher_subjects
  has_many :subjects, through: :teacher_subjects

  validates :teacher_name, presence: true, length: { maximum: 255 }
  validates :teacher_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :teacher_phone, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "teacher_email", "teacher_name", "teacher_phone", "updated_at"]
  end
end
