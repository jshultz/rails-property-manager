json.array!(@properties) do |property|
  json.extract! property, :id, :business_name, :street_address, :city, :state, :zip, :mdu, :units, :description, :belongs_to
  json.url property_url(property, format: :json)
end
