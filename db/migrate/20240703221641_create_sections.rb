class CreateSections < ActiveRecord::Migration[7.1]
  def change
    create_table :sections do |t|
      t.string :section_name
      t.text :section_description
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
