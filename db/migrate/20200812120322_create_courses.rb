class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :state
      t.string :author
      t.belongs_to :category

      t.timestamps
    end
  end
end
