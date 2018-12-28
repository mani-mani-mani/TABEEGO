class AreaController < ApplicationController
    def index
    end

    def area
        @area_all = Area.all
        @area = params[:area]
    end

    def country
    end

    def city
    end
end