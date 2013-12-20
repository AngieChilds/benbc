class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :year
      t.text :more

      t.timestamps
    end
  end
end
