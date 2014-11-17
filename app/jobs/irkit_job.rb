class IrkitJob
  def perform(ir_id)
    Infrared.find(ir_id).post
  end
end
