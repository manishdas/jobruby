class Applicant < Organization
  attr_accessor :experience
  attr_reader :applicant_number,

  def initialize(name,email,address,experience)
    @name=name
    @email=email
    @address=address
    @experience=experience
    @@applicant_number += 1
    @num_of_jobs=nil
  end

end
