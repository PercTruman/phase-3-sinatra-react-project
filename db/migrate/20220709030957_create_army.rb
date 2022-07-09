class CreateArmy < ActiveRecord::Migration[6.1]
  def change
    create_table :armies do |t|
      t.string :name
      t.string :alignment
      t.text :description
      t.timestamps
    end
  end
end
