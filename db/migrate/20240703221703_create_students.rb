class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :student_name
      t.integer :student_age
      t.string :student_grade

      t.timestamps
    end
  end
end
