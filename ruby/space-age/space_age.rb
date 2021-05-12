class SpaceAge
  EARTH_ORBITAL_PERIOD = 31_557_600
  PLANET_ORBITAL_PERIOD_SCALES = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  PLANET_ORBITAL_PERIOD_SCALES.each do |planet, orbital_period_scale |
    define_method("on_#{planet}") do
      @seconds / (EARTH_ORBITAL_PERIOD * orbital_period_scale )
    end
  end
end
