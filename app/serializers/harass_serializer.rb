class HarassSerializer
  include FastJsonapi::ObjectSerializer
  cache_options enabled: true, cache_length: 12.hours

  attributes :start_address, :description, :longitude, :latitude, :created_at, :happened_at
end
