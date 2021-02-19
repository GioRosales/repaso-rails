Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # REST
  resources :hotels
  # get     '/hotels',              to: 'hotels#index',  as: :hotels
  # get     '/hotels/new',          to: 'hotels#new',    as: :new_hotel
  # post    '/hotels',              to: 'hotels#create'
  # get     '/hotels/:popo',        to: 'hotels#show',   as: :hotel
  # get     '/hotels/:popo/edit',   to: 'hotels#edit',   as: :edit_hotel
  # put     '/hotels/:popo',        to: 'hotels#update'
  # patch   '/hotels/:popo',        to: 'hotels#update'
  # delete  '/hotels/:popo',        to: 'hotels#destroy'

  # _path
  # hotel_path => '/hotels/:popo' method: :put
  # hotel_path(1) => '/hotels/1' method: :put

  # _url
  # hotel_url(1) => 'http://localhost/hotels/1'

  # CRUD = de algo
  # get => pedir cosas
  # post => crear cosas
  # put y patch => actualizar cosas
  # delete => eliminar cosas

end
