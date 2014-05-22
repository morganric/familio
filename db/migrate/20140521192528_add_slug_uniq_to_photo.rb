class AddSlugUniqToPhoto < ActiveRecord::Migration
  def change
  	add_index(:photos, :slug, unique: true)
  end
end
