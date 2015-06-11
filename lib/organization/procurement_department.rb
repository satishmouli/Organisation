#JOB: Defines basic structure of any department
class ProcurementDepartment
  attr_reader :funding, :inventory
  def initialize(name, funding, inventory)
    @name = name
    @funding = funding
    @inventory = inventory
  end
end