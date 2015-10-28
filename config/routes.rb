Rails.application.routes.draw do
  match 'add' => 'report#add', :via => :post
  match 'append' => 'report#append', :via => :post
  match 'generate' => 'report#generate', :via => :post
end
