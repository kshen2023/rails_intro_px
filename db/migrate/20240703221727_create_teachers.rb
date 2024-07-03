class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.string :teacher_email
      t.string :teacher_phone

      t.timestamps
    end
  end
end
