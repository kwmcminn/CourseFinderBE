class AddColumnToHoles < ActiveRecord::Migration[5.2]
  def change
     add_column :holes, :hole_number, :integer
  end
end
