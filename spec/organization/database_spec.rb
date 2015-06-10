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
      database.new_department('name', nil)
      expect(database.department_list['name']).to be_instance_of(ProcurementDepartment)
    end
  end

  context 'Checking funding of department' do
    it 'should return the funding(=5000) of a department ("name", 5000)' do
      database = Database.new()
      database.new_department('name', 5000)
      expect(database.get_funding('name')).to eq(5000)
    end
  end

  context 'Adding funding' do
    it 'should increase funding of a department to 5000 if current funding is 0' do
      database = Database.new()
      database.new_department('name', 0)
      database.add_funding('name', 5000)
      expect(database.get_funding('name')).to eq(5000)
    end
  end
end