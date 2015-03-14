class CreateVacantions < ActiveRecord::Migration
  def change
    create_table :vacantions do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
