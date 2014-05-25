class AddToVideo < ActiveRecord::Migration
  def change
  	add_column :videos, :public, :boolean
  	add_column :videos, :image, :string 
  	add_column :videos, :user_id, :integer 
  	add_column :videos, :type, :string 
  	add_column :videos, :size, :integer 
  	add_column :videos, :slug, :string 
  	add_column :videos, :panda_video_id, :string
  	add_index :videos, :slug, :unique => true
  end
end
