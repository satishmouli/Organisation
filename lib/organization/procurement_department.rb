#JOB: Defines basic structure of any department
class ProcurementDepartment
  attr_reader :funding
  def initialize(department_name, funding, inventory)
    @name = department_name
    @funding = funding
    @inventory = inventory
  end

  def fundings
    @funding
  end

   def inventory
    @inventory
  end
end