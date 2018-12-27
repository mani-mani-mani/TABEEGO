class RemoveImageFromCities < ActiveRecord::Migration[5.1]
  def change
    remove_column :cities, :image, :string
  end
end
