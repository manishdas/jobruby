class Requestor < Organization
  attr_accessor :employee_num
  @@jobcount=nil
  def create_job(title,description,experience,deadline,salary)
    job=Job.new
    job.@job_title=title
  end
end
