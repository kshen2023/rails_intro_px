class SectionStudent < ApplicationRecord
  belongs_to :section
  belongs_to :student

  validates :section_id, presence: true
  validates :student_id, presence: true
end
