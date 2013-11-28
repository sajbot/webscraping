class CreateEventsens < ActiveRecord::Migration
  def change
    create_table :eventsens do |t|
      t.string :event
      t.string :city
      t.integer :number

      t.timestamps
    end
  end
end
