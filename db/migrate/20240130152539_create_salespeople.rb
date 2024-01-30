class CreateSalespeople < ActiveRecord::Migration[7.1]
  def change
    create_table :salespeople do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "e-mail"
      t.string "phone_number"
      
      t.timestamps
    end
  end
end
