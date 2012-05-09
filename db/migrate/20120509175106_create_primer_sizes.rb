class CreatePrimerSizes < ActiveRecord::Migration
  def change
    create_table :primer_sizes do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
