class Requestor < Organization
  attr_accessor :employee_num
  attr_reader :job_count

  def initialize(name,email,address,no_of_employee)
    @name=name
    @email=email
    @address=address
    @employee_num=no_of_employee
    @job_count= 0
  end

  def create_job(title,description,experience,deadline,salary)
    @job_count +=1
    j = Job.new(title,description,experience,deadline,salary,self)
    return j
  end

end
