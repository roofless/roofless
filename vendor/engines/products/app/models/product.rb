class Product < ActiveRecord::Base

  acts_as_indexed :fields => [:catalog_number, :name, :artist, :description, :paypal_embed_code]

  validates :catalog_number, :presence => true, :uniqueness => true

  belongs_to :image

  after_create :force_product_to_be_in_first_position!

  private

  def force_product_to_be_in_first_position!
    Product.find_each do |product|
      product.update_attribute(:position, product.position + 1)
    end
    self.update_attribute(:position, 0)
  end

end
