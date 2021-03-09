class Workstation
  attr_reader :minimum, :maximum
  DEFAULT_MINIMUM = 40
  def initialize(minimum = DEFAULT_MINIMUM, maximum = 1000)
    @minimum = minimum
    @maximum = maximum
  end

  def filter(soundwave)
    new_soundwave = []
    soundwave.each_with_index do |freq, i|
      if freq < @minimum
        freq = @minimum
      elsif freq > 1000
        freq = 1000
      end
      new_soundwave[i] = freq
    end
    return new_soundwave
  end
end
