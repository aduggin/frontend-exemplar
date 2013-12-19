Exemplar::Application.routes.draw do
  mount Kss::Engine => '/kss' if Rails.env.development?
  namespace :kss do
    resources :articles, only: :show
  end
  root 'index#index'

  get "styleguide/tests/barebones" => "styleguide#barebones"
  get "styleguide/tests/normalize" => "styleguide#normalize"
  get "styleguide/tests/bryanbraun" => "styleguide#bryanbraun"
  get "styleguide/tests/mas" => "styleguide#mas"

  get "forms" => "forms#index"

end
