require 'spec_helper'

describe Department do
  context 'initialize' do
    it 'should create a dummy department object with (parent_name, dept_name, nil) of type Department' do
      dept = Department.new('parent_dept', 'dept', nil)
      expect(dept).to be_instance_of(Department)
    end
  end

  context 'check funding' do
    it 'should return current funding of a department' do
      dept = Department.new('parent_dept', 'dept', 5000)
      expect(dept.fundings).to eq(5000)
    end
  end

  context 'add funding' do
    it 'should add funding to existing funding' do
      dept = Department.new('parent_dept', 'dept', 5000)
      dept.add_funding(2000)
      expect(dept.fundings).to eq(7000)
    end
  end
end