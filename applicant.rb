class Applicant < Organization
  attr_accessor :experience
  @@applicant_number= nil
  def initialize(name,email,address,experience)
    @name=name
    @email=email
    @address=address
    @experience=experience
     #@@applicant_number += 1
  end

  # def job_apply(job)
  #     if job.is_a?(Job)
  #       job.no_of_applicant
  #     end
  #   end
end
