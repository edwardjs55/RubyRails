class CreateAddEventToComments < ActiveRecord::Migration
  def change
    create_table :add_event_to_comments do |t|
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
