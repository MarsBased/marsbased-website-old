require 'date'

module Jekyll
  module MartianDateFilter
    def martian_date(input)

      bowie = DateTime.parse('1947/01/08').strftime('%Q').to_f
      now = input.to_date.strftime('%Q').to_f
      resta = (now - bowie)

      conversio_earth = 3.15569e10
      conversio_mars = 1000*88775.260726*668.59
      conversio_martian_days = 1000*88775.260726
      earth_years = resta/conversio_earth
      mars_years = resta/conversio_mars
      mars_days = (resta/conversio_martian_days)%668.59

      "d#{mars_days.to_i}.y#{mars_years.to_i}/AB"

    end
  end
end

Liquid::Template.register_filter(Jekyll::MartianDateFilter)