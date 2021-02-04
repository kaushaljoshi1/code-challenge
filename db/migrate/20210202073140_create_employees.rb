class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.references :department, null: false, foreign_key: true
      t.text :qualifications

      t.timestamps
    end
  end
end
