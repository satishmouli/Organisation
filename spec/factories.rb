FactoryGirl.define do
  factory :procurement_department, class: ProcurementDepartment do
    name "department"
    funding nil
    inventory nil
    initialize_with { new(name, funding, inventory) }
  end
end