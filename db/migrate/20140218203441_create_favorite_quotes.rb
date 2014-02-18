class CreateFavoriteQuotes < ActiveRecord::Migration
  def change
    create_table :favorite_quotes do |t|
      t.references :quote, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
