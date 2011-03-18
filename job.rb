class Job
  attr_accessor :job_title, :job_description,:job_experience, :deadline, :job_salary
  attr_reader :no_of_applicant

  def initialize(title,description,experience,deadline,salary,requestor)
    @job_title=title
    @job_description=description
    @job_experience=experience
    @deadline=deadline
    @job_salary=salary
    @applicant =Array.new
    @no_of_applicant = nil
    @requestor=requestor
  end

  def applicants=(applicant)
    if applicant.is_a?(Applicant)
      @applicant << applicant
      @no_of_applicant +=1
    else
      puts "Not a applicant"
    end
  end

  def applicants
    @applicant.each do |app|
      print "Applicant name:#{app.name}
      Applicant email:#{app.email}
      Applicant experience:#{app.experience}"
    end
  end

  def requestor
    puts "Requestor name:#{@requestor.name}
    \n Requestor Address:#{@requestor.address}
    Requestor Number of Employee:#{@requestor.employee_num}
    Requestor Email:#{@requestor.email} "
  end

end