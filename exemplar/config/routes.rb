Exemplar::Application.routes.draw do
  root 'index#index'

  get "styleguide/tests/barebones" => "styleguide#barebones"
  get "styleguide/tests/normalize" => "styleguide#normalize"
  get "styleguide/tests/mas" => "styleguide#mas"

  get "forms" => "forms#index"

end
