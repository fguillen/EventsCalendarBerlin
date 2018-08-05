class CreateCalendarEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :calendar_events do |t|
      t.references :venue, foreign_key: true, :null => false
      t.string :title, :null => false
      t.datetime :date_time, :null => false
      t.string :checksum, :null => false, :index => { :unique => true }
      t.string :url, :null => false
      t.text :info
      t.text :pics
      t.string :address
      t.integer :duration_minutes
      t.decimal :price_euros, :precision => 8, :scale => 2
      t.text :tags
    end


  end
end
