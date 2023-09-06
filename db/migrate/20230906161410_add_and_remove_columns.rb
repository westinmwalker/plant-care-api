class AddAndRemoveColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :image_url, :string
    remove_column :users, :image_url, :string
  end
end
