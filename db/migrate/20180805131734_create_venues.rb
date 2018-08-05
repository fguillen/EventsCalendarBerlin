class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name, :null => false
      t.string :calendar_url, :null => false
      t.string :scraper_module_name, :null => false
    end
  end
end
