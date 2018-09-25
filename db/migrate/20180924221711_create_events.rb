class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_Name
      t.string :description
      t.date :date
      t.datetime :time
      t.string :aveg_Rating
      t.string :category
      t.string :latitude
      t.string :longitude
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
