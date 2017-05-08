class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :original
      t.string :rendered
      t.string :top_text
      t.string :bottom_text
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
