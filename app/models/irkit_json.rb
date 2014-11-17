class IrkitJson
  def initialize(str)
    @json = JSON.parse(str)
  end

  def device
    devices = @json["Device"]
    name = devices.keys[0]
    {
       name: name,
       deviceid: devices[name]["deviceid"],
       clientkey: devices[name]["clientkey"]
    }
  end

  def infrareds
    @json["IR"].map do |key, value|
       {
         name: key,
         json: value.to_json
       }
    end
  end
end
