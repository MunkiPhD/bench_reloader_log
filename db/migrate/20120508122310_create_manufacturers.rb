class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name, :null => false
      t.string :abbreviation, :null => false, :default => ""

      t.timestamps
    end
  end
end
