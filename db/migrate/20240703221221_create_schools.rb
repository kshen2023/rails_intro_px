class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.string :school_name
      t.text :school_description

      t.timestamps
    end
  end
end
