module Api::V1
  class HarassesController < ApplicationController
    before_action :set_harass, only: [:update, :show, :edit]

    def index
      @harasses = Harass.all
      render json: serializer.new(@harasses)
    end

    def new
      @harass = Harass.new
    end

    def show
      render json: @harass
    end

    def create
      @harass = Harass.new(harass_params)
      if @harass.save
        render json: @harass, status: "Created"
      else
        render json: @harass.errors, status: :unprocessable_entity
      end
    end

    def update
      if @harass.update(harasss_params)
        render json: @harass, status: "Updated"
      else
        render json: @harass.errors, status: :unprocessable_entity
      end
    end

    private
      def set_harass
        @harass ||= Harass.fin(params[:id])
      end

      def harass_params
        params.require(:harass).permit(:start_address, :description, :longitude, :latitude, :happened_at)
      end

      def serializer
        HarassSerializer
      end
  end
end