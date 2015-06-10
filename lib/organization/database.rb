# JOB: Keeps track of different department
class Database
  attr_reader :department_list
  def initialize
    @department_list = {}
  end

  def new_department(parent_name, name, funding)
    @department_list[name] = Department.new(parent_name, name, funding)
  end

  def get_funding(department_name)
    @department_list[department_name].fundings
  end

  def add_funding(department_name, new_funding)
    @department_list[department_name].add_funding(new_funding)
  end
end