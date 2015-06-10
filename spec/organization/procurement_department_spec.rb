require 'spec_helper'

describe ProcurementDepartment do
  context 'initialize' do
    it 'should create a dummy procurement department object with (dept_name, nil) of type Department' do
      dept = ProcurementDepartment.new('department', nil)
      expect(dept).to be_instance_of(ProcurementDepartment)
    end
  end

  context 'check funding' do
    it 'should return current funding of a department' do
      dept = ProcurementDepartment.new('department', 5000)
      expect(dept.fundings).to eq(5000)
    end
  end

  context 'add funding' do
    it 'should add funding to existing funding' do
      dept = ProcurementDepartment.new('department', 5000)
      dept.add_funding(2000)
      expect(dept.fundings).to eq(7000)
    end
  end
end