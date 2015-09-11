class CreateEventGuests < ActiveRecord::Migration
  def change
    create_table :event_guests do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
