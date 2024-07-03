class CreateSectionStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :section_students do |t|
      t.references :section, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
