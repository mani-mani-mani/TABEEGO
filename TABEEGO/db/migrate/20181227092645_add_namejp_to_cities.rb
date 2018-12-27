class AddNamejpToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :name_jp, :string
  end
end
