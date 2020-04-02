class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text      :text
      t.string    :user_name
      t.text      :title
      t.timestamps
    end
  end
end
