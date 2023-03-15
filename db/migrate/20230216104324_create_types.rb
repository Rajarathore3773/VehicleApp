class CreateTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :types do |t|
      t.integer :wheel
      t.string :fuel

      t.timestamps
    end
  end
end
