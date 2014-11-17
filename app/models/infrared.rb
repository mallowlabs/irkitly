class Infrared < ActiveRecord::Base
  include InfraredChronoCross
  belongs_to :device

  def post
puts 'post'
    conn = Faraday.new(url: 'https://api.getirkit.com') do |builder|
      builder.request  :url_encoded
      builder.response :logger
      builder.adapter  :net_http
    end

    irkit = device

    conn.post '/1/messages', {
      clientkey: irkit.clientkey,
      deviceid: irkit.deviceid,
      message: json
    }
  end
end
