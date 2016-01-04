class AddFotoToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :foto, :string
  end
end
