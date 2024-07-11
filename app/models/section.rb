class Section < ApplicationRecord
  belongs_to :school
  has_many :section_students
  has_many :students, through: :section_students
  validates :section_name, presence: true, length: { maximum: 255 }
  validates :section_description, length: { maximum: 1000 }
  validates :school_id, presence: true

  def self.ransackable_associations(auth_object = nil)
    ["school", "section_students", "students"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "school_id", "section_description", "section_name", "updated_at"]
  end
end
