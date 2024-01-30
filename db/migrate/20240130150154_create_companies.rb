class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      # t.integer "id" (don't need to do this since rails does it for us)
      t.string "name" 
      t.string "city"
      t.string "state"
      t.string "url"
      t.timestamps
    end
  end
end