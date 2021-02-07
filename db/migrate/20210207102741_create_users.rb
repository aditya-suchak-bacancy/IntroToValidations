class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.text :address
      t.integer :pin
      t.integer :contact_no

      t.timestamps
    end
  end
end
