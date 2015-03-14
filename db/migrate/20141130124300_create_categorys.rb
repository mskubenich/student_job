class CreateCategorys < ActiveRecord::Migration
  def change
    create_table :categorys do |t|
      t.string :title
      t.text :description
      t.parentId :parentId

      t.timestamps
    end
  end
end
