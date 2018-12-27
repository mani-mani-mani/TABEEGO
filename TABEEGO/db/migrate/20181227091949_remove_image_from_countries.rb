class RemoveImageFromCountries < ActiveRecord::Migration[5.1]
  def change
    remove_column :countries, :image, :string
  end
end
