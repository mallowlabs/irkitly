module InfraredsHelper
  def json_pp(json)
    JSON.pretty_generate(JSON.parse(json))
  end
end
