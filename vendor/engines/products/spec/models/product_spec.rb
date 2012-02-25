require 'spec_helper'

describe Product do

  def reset_product(options = {})
    @valid_attributes = {
      :id => 1,
      :catalog_number => "RSpec is great for testing too"
    }

    @product.destroy! if @product
    @product = Product.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_product
  end

  context "validations" do
    
    it "rejects empty catalog_number" do
      Product.new(@valid_attributes.merge(:catalog_number => "")).should_not be_valid
    end

    it "rejects non unique catalog_number" do
      # as one gets created before each spec by reset_product
      Product.new(@valid_attributes).should_not be_valid
    end
    
  end

end