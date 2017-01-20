class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.date :dob
      t.text :sex
      t.timestamps null: false
    end
  end
end
