class AddOwnerToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_reference :companies, :owner, null: false, foreign_key: true
  end
end
