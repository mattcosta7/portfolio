json.array!(@albums) do |album|
  json.extract! album, :id, :name, :location
  json.url album_url(abum, format: :json)
end
