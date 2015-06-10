# JOB: Keeps track of different department
class Database
  attr_reader :department_list
  def initialize
    @department_list = {}
  end

  def new_department(parent_name, name, funding)
    @department_list[name] = Department.new(parent_name, name, funding)
  end
end