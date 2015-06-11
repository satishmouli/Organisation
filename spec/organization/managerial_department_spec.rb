require 'spec_helper'

describe ManagerialDepartment do

  context 'check child' do
    it 'should return current funding of a department' do
      leaf1 = ProcurementDepartment.new('department_1', 5000, 200)
      leaf2 = ProcurementDepartment.new('department_2', 1000, 200)
      dept = ManagerialDepartment.new('manager_1', [leaf1, leaf2])
      expect(dept.children).to eq([leaf1, leaf2])
    end
  end

  context 'get allocation under current department' do
    it 'should return current funding allocated to its child department' do
      leaf1 = ProcurementDepartment.new('department_1', 5000, 200)
      leaf2 = ProcurementDepartment.new('department_2', 1000, 200)
      level21 = ManagerialDepartment.new('manager_2', [leaf1, leaf2])
      leaf3 = ProcurementDepartment.new('department_3', 7000, 200)
      leaf4 = ProcurementDepartment.new('department_4', 2000, 200)
      level22 = ManagerialDepartment.new('manager_3', [leaf3, leaf4])
      level1 = ManagerialDepartment.new('manager_1', [level21, level22])
      expect(level1.fundings).to eq(15000)
    end
  end

  context 'get inventory under current department' do
    it 'should return current funding allocated to its child department' do
      leaf1 = ProcurementDepartment.new('department_1', 8000, 200)
      leaf2 = ProcurementDepartment.new('department_2', 10000, 300)
      level21 = ManagerialDepartment.new('manager_2', [leaf1, leaf2])
      leaf3 = ProcurementDepartment.new('department_3', 7000, 500)
      leaf4 = ProcurementDepartment.new('department_4', 2000, 700)
      level22 = ManagerialDepartment.new('manager_3', [leaf3, leaf4])
      level1 = ManagerialDepartment.new('manager_1', [level21, level22])
      expect(level1.inventory).to eq(1700)
    end
  end

end