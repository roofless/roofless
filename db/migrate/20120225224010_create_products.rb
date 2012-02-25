class CreateProducts < ActiveRecord::Migration

  def self.up
    create_table :products do |t|
      t.string :catalog_number
      t.string :name
      t.string :artist
      t.text :description
      t.integer :image_id
      t.text :paypal_embed_code
      t.integer :position

      t.timestamps
    end

    add_index :products, :id

    load(Rails.root.join('db', 'seeds', 'products.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "products"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/products"})
    end

    drop_table :products
  end

end
