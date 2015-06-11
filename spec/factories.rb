FactoryGirl.define do
  factory :procurement_department, class: ProcurementDepartment do
    name "department"
    funding nil
    inventory nil
    initialize_with { new(name, funding, inventory) }
  end

  factory :managerial_department, class: ManagerialDepartment do
    name "department"
	child_departments [] 
    initialize_with { new(name, child_departments) }
  end
end