require 'spec_helper'
require_relative '../factories.rb'

describe ProcurementDepartment do
  context 'initialize' do
    it 'should create a dummy procurement department object with (dept_name, nil) of type Department' do
      dept = ProcurementDepartment.new('department', nil, nil)
      expect(dept).to be_instance_of(ProcurementDepartment)
    end
  end

  context 'check funding' do
    it 'should return current funding of a department' do
      dept = ProcurementDepartment.new('department', 5000, 200)
      expect(dept.funding).to eq(5000)
    end
  end

  context 'check inventory' do
    it 'should return current inventory of a department' do
      dept = ProcurementDepartment.new('department', 5000, 200)
      expect(dept.inventory).to eq(200)
    end
  end

  context 'check factory girl building' do
    it 'should create a dummy procurement department object with (dept_name, nil) of type Department' do
      dept = FactoryGirl.build(:procurement_department, name: "test_dept", funding: 2000, inventory: 300)
      expect(dept).to be_instance_of(ProcurementDepartment)
    end
  end
end