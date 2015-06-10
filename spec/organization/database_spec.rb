require 'spec_helper'

describe Database do
  context 'Initialize' do
    it 'should create a dummy databse object with an empty hash of Department' do
      database = Database.new()
      expect(database.department_list).to be_instance_of(Hash)
    end
  end

  context 'Adding new department' do
    it 'should add a new department to the list' do
      database = Database.new()
      database.new_department('parent', 'name', 'nil')
      expect(database.department_list['name']).to be_instance_of(Department)
    end
  end
end