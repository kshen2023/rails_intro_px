class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.text :subject_description
      t.string :subject_code

      t.timestamps
    end
  end
end
