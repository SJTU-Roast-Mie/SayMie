Rails.application.routes.draw do
  #   mount api
  mount ApplicationAPI => '/'

  root 'dash#index'
end
