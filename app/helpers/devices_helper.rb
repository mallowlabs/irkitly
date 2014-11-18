module DevicesHelper
  def job_live?(ir)
    ChronoCross::JobManager.jobs.has_key? ir.id.to_s
  end
end
