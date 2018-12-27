class AddNamejpToCountries < ActiveRecord::Migration[5.1]
  def change
    add_column :countries, :name_jp, :string
  end
end
