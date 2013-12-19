module Kss
  class ArticlesController < Kss::ApplicationController
    layout 'kss/application'
    def show
      render params[:id]
    end
  end
end