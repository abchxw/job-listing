module JobsHelper
  def render_job_stauts
     if job.is_hidden
       "(Hidden)"
     else
       "(Public)"
    end
  end
end
