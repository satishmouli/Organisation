# represents parent department in organization
class ManagerialDepartment
  def initialize(name, child_departments)
    @name = name
    @child_departments = child_departments
  end

  def children
    @child_departments
  end

  def fundings
    @child_departments.map{ |dept| dept.fundings}.inject(:+)
  end

   def inventory
    @child_departments.map{ |dept| dept.inventory}.inject(:+)
  end
end