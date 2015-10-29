FactoryGirl.define do
  factory :report do
    template "/bin/bash/template.jrxml"
    collection []
  end
end
