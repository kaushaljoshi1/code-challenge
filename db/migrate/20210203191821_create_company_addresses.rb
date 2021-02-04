class CreateCompanyAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :company_addresses do |t|
      t.references :company, null: false, foreign_key: true
      t.string :state_code
      t.string :state_name
      t.string :city
      t.string :time_zone

      t.timestamps
    end
  end
end
