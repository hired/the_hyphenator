class CreatePhishSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :phish_songs do |t|
      t.string :name
      t.timestamps
    end
  end
end
