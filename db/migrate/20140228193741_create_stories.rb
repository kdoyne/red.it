class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :url
      t.text :title
      t.references :user
    end
  end
end
