class School < ApplicationRecord
  has_many :sections
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "school_description", "school_name", "updated_at"]
  end
  validates :school_name, presence: true, length: { maximum: 255 }
  validates :school_description, length: { maximum: 1000 }
end
