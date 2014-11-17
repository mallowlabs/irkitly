class IrkitJob
  def perform(ir_id)
    ActiveRecord::Base.connection_pool.with_connection do
      ir_id = ir_id.first if ir_id.is_a? Array
      ir = Infrared.find(ir_id)
      puts ir_id.class.name
      puts ir.class.name
      ir.post
    end
  end
end
