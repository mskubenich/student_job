class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :description
      t.integer :salary
      t.string  :currency

      t.timestamps
    end
  end
end
