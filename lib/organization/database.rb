# JOB: Keeps track of different department
class Database
  attr_reader :department_list
  def initialize
    @department_list = {}
  end

  def new_department(name, funding)
    @department_list[name] = ProcurementDepartment.new(name, funding)
  end

  def get_funding(department_name)
    @department_list[department_name].fundings
  end

  def add_funding(department_name, new_funding)
    @department_list[department_name].add_funding(new_funding)
  end
end