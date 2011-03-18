class Job
  attr_accessor :job_title, :job_description,:job_experience, :deadline, :job_salary
  @@job_id=nil
  @no_of_applicant = nil

  def initialize(title,description,experience,deadline,salary,requestor)
    @job_title=title
    @job_description=description
    @job_experience=experience
    @deadline=deadline
    @job_salary=salary
    @applicant =Array.new
    @requestor=requestor
  end
  # def no_of_applicant
  #     puts "Job-Title: " + @job_title
  #             puts "Job-Description: " + @job_description
  #             puts "Job-Experience: " + @job_experience
  #             puts "Deadline: " + @deadline
  #             puts "Salary: " + @job_salary
  #     @no_of_applicant +=1
  # end
  def applicants=(applicant)
    if applicant.is_a?(Applicant)
      @applicant << applicant
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