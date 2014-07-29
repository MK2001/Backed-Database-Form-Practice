Rails.application.routes.draw do
   get '/databases/:id' => 'application#show'
  get '/new_database' => 'application#new'
  get '/create_database' => 'application#create'
  
end
