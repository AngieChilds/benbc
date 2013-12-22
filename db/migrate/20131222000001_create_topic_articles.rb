class CreateTopicArticles < ActiveRecord::Migration
  def change
    create_table :topic_articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
