class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :color
      t.string :model
      t.belongs_to :type, foreign_key: true
      t.belongs_to :year, foreign_key: true
      t.timestamps
    end
  end
end
