require 'spec_helper'

describe ManagerialDepartment do

  context 'check child' do
    it 'should return current funding of a department' do
      leaf1 = ProcurementDepartment.new('department_1', 5000)
      leaf2 = ProcurementDepartment.new('department_2', 1000)
      # leaf3 = ProcurementDepartment.new('department_3', 2000)
      dept = ManagerialDepartment.new('manager_1', [leaf1, leaf2])
      # manager_2 = ManagerialDepartment.new('manager_2', [manager_1, leaf3])
      expect(dept.children).to eq([leaf1, leaf2])
    end
  end

  context 'get allocation under current department' do
    it 'should return current funding allocated to its child department' do
      leaf1 = ProcurementDepartment.new('department_1', 5000)
      leaf2 = ProcurementDepartment.new('department_2', 1000)
      level21 = ManagerialDepartment.new('manager_2', [leaf1, leaf2])
      leaf3 = ProcurementDepartment.new('department_3', 7000)
      leaf4 = ProcurementDepartment.new('department_4', 2000)
      level22 = ManagerialDepartment.new('manager_3', [leaf3, leaf4])
      level1 = ManagerialDepartment.new('manager_1', [level21, level22])
      expect(level1.fundings).to eq(15000)
    end
  end

  context 'get allocation under current department' do
    it 'should return current funding allocated to its child department' do
      leaf1 = ProcurementDepartment.new('department_1', 8000)
      leaf2 = ProcurementDepartment.new('department_2', 10000)
      level21 = ManagerialDepartment.new('manager_2', [leaf1, leaf2])
      leaf3 = ProcurementDepartment.new('department_3', 7000)
      leaf4 = ProcurementDepartment.new('department_4', 2000)
      level22 = ManagerialDepartment.new('manager_3', [leaf3, leaf4])
      level1 = ManagerialDepartment.new('manager_1', [level21, level22])
      expect(level1.fundings).to eq(27000)
    end
  end

  context 'get allocation under current department' do
    it 'should return current funding allocated to its child department' do
      leaf1 = ProcurementDepartment.new('department_1', 8000)
      leaf2 = ProcurementDepartment.new('department_2', 10000)
      level21 = ManagerialDepartment.new('manager_2', [leaf1, leaf2])
      leaf3 = ProcurementDepartment.new('department_3', 7000)
      leaf4 = ProcurementDepartment.new('department_4', 2000)
      level22 = ManagerialDepartment.new('manager_3', [leaf3, leaf4])
      leaf5 = ProcurementDepartment.new('department_5', 9000)
      level23 = ManagerialDepartment.new('manager_4',[leaf5])
      level22 = ManagerialDepartment.new('manager_3', [leaf3, leaf4, level23])
      level1 = ManagerialDepartment.new('manager_1', [level21, level22])
      expect(level1.fundings).to eq(36000)
    end
  end

end