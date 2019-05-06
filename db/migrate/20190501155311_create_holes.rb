class CreateHoles < ActiveRecord::Migration[5.2]
  def change
    create_table :holes do |t|
      t.integer :total
      t.integer :round_id

      t.timestamps
    end
  end
end
