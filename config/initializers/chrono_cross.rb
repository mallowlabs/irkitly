Infrared.where.not(schedule: nil).find_each do |ir|
  ChronoCross::JobManager.register(ir.id.to_s, ir.schedule, IrkitJob, ir.id)
end
