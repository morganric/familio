class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :display_name
      t.text :bio
      t.string :image
      t.string :website
      t.date :dob
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
