class Property < ActiveRecord::Base
  belongs_to :user
  has_many :tickets

  has_attached_file :property_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :property_photo, :content_type => /\Aimage\/.*\Z/

end
