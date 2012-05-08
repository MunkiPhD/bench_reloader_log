class CreateLoadTypes < ActiveRecord::Migration
  def change
    create_table :load_types do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
