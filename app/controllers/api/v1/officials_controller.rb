module Api
  module V1
    class OfficialsController < ApplicationController
      def index
        @officials = Official.all
        render json: @officials
      end
    end
  end
end