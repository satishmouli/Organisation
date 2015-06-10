require 'spec_helper'

describe Department do
  context 'initialize' do
    it 'should create a dummy department object with (parent_name, dept_name, nil) of type Department' do
      dept = Department.new('parent_dept', 'dept', 'nil')
      expect(dept).to be_instance_of(Department)
    end
  end
end