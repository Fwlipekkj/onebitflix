class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.string :title
      t.text :description
      t.string :thumbnail_key
      t.references :category, null: false, foreign_key: true
      t.string :featured_thumbnail_key
      t.string :thumbnail_cover_key

      t.boolean :highlighted, default: false

      t.timestamps
    end
  end
end
