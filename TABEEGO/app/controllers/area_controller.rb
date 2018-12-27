class AreaController < ApplicationController
    def index
    end

    def area
        @area_all = Area.All
        @area = params[:area]
    end

    def country
    end

    def city
    end
end