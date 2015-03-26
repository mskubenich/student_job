class CreateVacantions < ActiveRecord::Migration
  def change
    create_table :vacantions do |t|
      t.string :title
      t.text :description
      t.integer :salary
      t.string  :currency

      t.timestamps
    end
  end
end
