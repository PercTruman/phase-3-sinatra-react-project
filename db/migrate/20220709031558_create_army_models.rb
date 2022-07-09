class CreateArmyModels < ActiveRecord::Migration[6.1]
  def change
    create_table :army_models do |t|
      t.string :name
      t.string :image_url
      t.integer :number_in_collection
      t.integer :cost_per_box
      t.integer :unit_points_cost
      t.integer :army_id
      t.timestamps
    end
  end
end
