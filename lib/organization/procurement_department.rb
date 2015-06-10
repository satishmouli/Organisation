#JOB: Defines basic structure of any department
class ProcurementDepartment
  attr_reader :funding
  def initialize(department_name, funding)
    @name = department_name
    @funding = funding
  end

  def fundings
    @funding
  end

  def add_funding(new_funding)
    @funding += new_funding
  end
end