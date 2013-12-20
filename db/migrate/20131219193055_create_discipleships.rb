class CreateDiscipleships < ActiveRecord::Migration
  def change
    create_table :discipleships do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :year
      t.text :more

      t.timestamps
    end
  end
end
