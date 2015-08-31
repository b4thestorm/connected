class AddReminderToContact < ActiveRecord::Migration
  def change
    add_column :reminders, :contact_id, :integer
  end
end
