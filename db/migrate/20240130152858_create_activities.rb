class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.integer "salesperson_id"
      t.string "salesperson_first_name"
      t.string "salesperson_last_name"
      t.integer "contact_id"
      t.string "contact_first_name"
      t.string "contact_last_name"
      t.string "meeting_type"
      t.timestamps
    end
  end
end
