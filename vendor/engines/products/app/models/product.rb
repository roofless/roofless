class Product < ActiveRecord::Base

  acts_as_indexed :fields => [:catalog_number, :name, :artist, :description, :paypal_embed_code]

  validates :catalog_number, :presence => true, :uniqueness => true
  
  belongs_to :image
end
