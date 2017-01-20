class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :location
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.text :description
      t.timestamps null: false
    end
  end
end
