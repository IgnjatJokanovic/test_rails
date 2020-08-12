class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :state
      t.belongs_to :vertical

      t.timestamps
    end
  end
end
