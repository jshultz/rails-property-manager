class AddPropertyPhotoToProperties < ActiveRecord::Migration
  def self.up
    add_attachment :properties, :property_photo
  end
end
