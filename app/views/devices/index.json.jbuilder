json.array!(@devices) do |device|
  json.extract! device, :id, :user_id, :name, :deviceid, :clientkey
  json.url device_url(device, format: :json)
end
