module InfraredChronoCross
  extend ActiveSupport::Concern

  included do
    after_save :register_chrono_cross
    after_destroy :unregister_chrono_cross
  end

  private
    def register_chrono_cross
      ChronoCross::JobManager.register(id.to_s, schedule, IrkitJob, id) unless schedule.blank?
    end

    def unregister_chrono_cross
      ChronoCross::JobManager.unregister(id.to_s)
    end
end
