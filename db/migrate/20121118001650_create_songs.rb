class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :url
      t.string :genre
      t.string :startTime

      t.timestamps
    end
  end
end
