class HarassSerializer
  include FastJsonapi::ObjectSerializer
  cache_options enabled: true, cache_length: 12.hours

  attributes :start_address, :description, :longitude, :latitude, :created_at, :when

  attribute :when do |object|
    object.happened_at&.strftime("%d %b %Y")
  end
end
