class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :title
      t.string :favorite_quote
      t.string :media_type
      t.string :image_url
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
