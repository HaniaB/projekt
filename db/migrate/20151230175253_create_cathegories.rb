class CreateCathegories < ActiveRecord::Migration
  def change
    create_table :cathegories do |t|
      t.string :cat
      t.text :description
      t.references :plant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
