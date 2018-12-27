class AddNamejpToAreas < ActiveRecord::Migration[5.1]
  def change
    add_column :areas, :name_jp, :string
  end
end
