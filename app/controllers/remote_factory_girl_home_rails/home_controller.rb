module RemoteFactoryGirlHomeRails
  class HomeController < ApplicationController 

    # TODO provide methods to skip in Rails initialization process
    skip_before_action :authenticate

    def create 
      factory = FactoryGirl.create(params['factory'].to_sym, params['attributes'])
      render json: factory
    end
  end
end