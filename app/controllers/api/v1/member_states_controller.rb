module Api
  module V1
    class MemberStatesController < ApplicationController
      def index
        @member_states = MemberState.all
        render json: @member_states
      end
    end
  end
end