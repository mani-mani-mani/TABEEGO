class Area < ApplicationRecord
    has_many :countries

    def self.city
        result = Hash.new{|h,k| h[k] = {}}
        data = Area.joins(:countries => :cities).select("areas.name AS area, countries.name AS country, cities.name AS city")

        data.each do |data|
            result[data.area][data.country] = data.city
        end
        return result
    end

    def self.japanize
        result = Hash.new{|h,k| h[k] = {}}
        data = Area.joins(:countries => :cities).select("areas.name AS area, areas.name_jp AS area_jp,countries.name AS country, countries.name_jp AS country_jp,cities.name AS city, cities.name_jp AS city_jp")
        data.each do |data|
            result[data.area] = data.area_jp
            result[data.country] = data.country_jp
            result[data.city] = data.city_jp
        end
        return result
    end
end
