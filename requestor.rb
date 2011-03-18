class Requestor < Organization
  attr_accessor :employee_num
  @job_count= 0
  def initialize(name,email,address,no_of_employee)
    @name=name
    @email=email
    @address=address
    @employee_num=no_of_employee
   # @job_object=Array.new
  end
  def create_job(title,description,experience,deadline,salary)
    j = Job.new(title,description,experience,deadline,salary,self)
    return j
  end
end
