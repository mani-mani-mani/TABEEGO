class RemoveImageFromAreas < ActiveRecord::Migration[5.1]
  def change
    remove_column :areas, :image, :string
  end
end
