Exemplar::Application.routes.draw do
  mount Kss::Engine => '/kss' if Rails.env.development?
  namespace :kss do
    resources :articles, only: :show
  end
  root 'index#index'

  get "demos/barebones" => "demos#barebones"
  get "demos/normalize" => "demos#normalize"
  get "demos/bryanbraun" => "demos#bryanbraun"
  get "demos/mas" => "demos#mas"

  get "forms" => "forms#index"

end
