module Api
  module V1
    class PoliticalGroupsController < ApplicationController
      def index
        @political_groups = PoliticalGroup.all
        render json: @political_groups
      end
    end
  end
end
