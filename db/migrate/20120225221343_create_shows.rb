class CreateShows < ActiveRecord::Migration

  def self.up
    create_table :shows do |t|
      t.string :name
      t.datetime :date
      t.integer :flyer_id
      t.text :description
      t.string :location
      t.integer :position

      t.timestamps
    end

    add_index :shows, :id

    load(Rails.root.join('db', 'seeds', 'shows.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "shows"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/shows"})
    end

    drop_table :shows
  end

end
