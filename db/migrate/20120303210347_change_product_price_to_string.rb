class ChangeProductPriceToString < ActiveRecord::Migration
  def self.up
    change_column :products, :price, :string
  end

  def self.down
    change_column :products, :price, :integer
  end
end
