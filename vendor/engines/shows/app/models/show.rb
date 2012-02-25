class Show < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :description, :location]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :flyer, :class_name => 'Image'
end
