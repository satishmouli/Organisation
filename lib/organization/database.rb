# JOB: Keeps track of different department
class Database
  attr_reader :department_list
  def initialize
    @department_list = {}
  end
end