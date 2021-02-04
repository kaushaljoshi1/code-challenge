class CreateJoinTableCompaniesOwners < ActiveRecord::Migration[6.0]
  def change
    create_join_table :companies, :owners do |t|
       t.index [:company_id, :owner_id], unique: true
      # t.index [:owner_id, :company_id]
    end
  end
end
