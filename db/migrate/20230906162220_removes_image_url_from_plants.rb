class RemovesImageUrlFromPlants < ActiveRecord::Migration[7.0]
  def change
    remove_column :plants, :image_url, :string
  end
end
