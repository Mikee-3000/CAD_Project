module Api
  module V1
    class AreasController < ApplicationController
      def index
        @areas = Area.all
        render json: @areas
      end
    end
  end
end