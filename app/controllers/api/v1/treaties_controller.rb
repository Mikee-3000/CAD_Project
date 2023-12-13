module Api
  module V1
    class TreatiesController < ApplicationController
      def index
        @treaties = Treaty.all
        render json: @treaties
      end
    end
  end
end
