class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.boolean :remind
      t.timestamps null: false
    end
  end
end
