json.array!(@infrareds) do |infrared|
  json.extract! infrared, :id, :device_id, :name, :schedule, :json
  json.url infrared_url(infrared, format: :json)
end
