Rails.application.routes.draw do
  resources :nhaxuatbans
  resources :tl_saches
  resources :tacgia
  resources :sach23s
  resources :theloaisaches
   root "theloaisaches#index"
   get "/theloaisaches", to: "theloaisaches#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
