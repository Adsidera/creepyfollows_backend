class HarassSerializer
  include FastJsonapi::ObjectSerializer
  cache_options enabled: true, cache_length: 12.hours

  attributes :start_address, :happened_at, :description, :longitude, :latitude
end
