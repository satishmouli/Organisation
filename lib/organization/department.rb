#JOB: Defines basic structure of any department
class Department
  attr_reader :funding
  def initialize(parent_department_name, department_name, funding)
    @parent_department_name = parent_department_name
    @name = department_name
    @funding = funding
  end

  def fundings
    @funding
  end
end