class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :author
      t.string :image_url
      t.string :description
      t.string :contact
      t.timestamps
    end
  end
end
