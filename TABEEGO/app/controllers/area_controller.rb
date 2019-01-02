class AreaController < ApplicationController
    def index
        @area = Area.city
        @japanize = Area.japanize
    end
end