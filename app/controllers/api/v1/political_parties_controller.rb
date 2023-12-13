module Api
  module V1
    class PoliticalPartiesController < ApplicationController
      def index
        @political_party = PoliticalParty.all
        render json: @political_party
      end
    end
  end
end
