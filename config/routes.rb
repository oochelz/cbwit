Rails.application.routes.draw do
  root 'home#index'
  get 'join_group', to: 'home#join_group'
  get 'clear_groups', to: 'home#clear_groups'
end
