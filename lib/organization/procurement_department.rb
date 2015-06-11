#JOB: Defines basic structure of any department
class ProcurementDepartment
  attr_reader :funding, :inventory
  def initialize(department_name, funding, inventory)
    @name = department_name
    @funding = funding
    @inventory = inventory
  end
end