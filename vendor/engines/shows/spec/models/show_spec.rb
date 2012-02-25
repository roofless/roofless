require 'spec_helper'

describe Show do

  def reset_show(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @show.destroy! if @show
    @show = Show.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_show
  end

  context "validations" do
    
    it "rejects empty name" do
      Show.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_show
      Show.new(@valid_attributes).should_not be_valid
    end
    
  end

end