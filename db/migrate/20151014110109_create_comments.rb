class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :customer_id
      t.string :overdue_since
      t.string :amount
      t.string :lodged_by
      t.string :types_of_lorry
      t.string :location
      t.string :remarks
      t.timestamps null: false
    end
  end
end
