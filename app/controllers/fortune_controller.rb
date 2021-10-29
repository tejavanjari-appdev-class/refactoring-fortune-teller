class FortuneController < ApplicationController
  def horoscope
    @sign = params.fetch('the_sign')
    info = Zodiac.list.fetch(@sign.to_sym)
    @name = info.fetch(:name)
    @horoscope = info.fetch(:horoscope)
    
    @array_of_numbers = Zodiac.lucky_numbers
    render({ :template => "horoscope_template.html.erb" })
  end
end
