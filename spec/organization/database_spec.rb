require 'spec_helper'

describe Database do
  context 'initialize' do
    it 'should create a dummy databse object with an empty hash of Department' do
      database = Database.new()
      expect(database.departments).to be_instance_of(Hash)
    end
  end
end