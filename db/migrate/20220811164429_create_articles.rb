class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :comments
      t.integer :status

      t.timestamps
    end
  end
end
