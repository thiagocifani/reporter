Rails.application.routes.draw do
  get "/status", to: "application#status"

  match 'add' => 'report#add', :via => :post
  match 'append' => 'report#append', :via => :post
  match 'generate' => 'report#generate', :via => :post
end
