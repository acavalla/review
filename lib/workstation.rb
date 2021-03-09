class Workstation
  attr_reader :minimum, :maximum
  DEFAULT_MINIMUM = 40
  DEFAULT_MAXIMUM = 1000
  def initialize(minimum = DEFAULT_MINIMUM, maximum = DEFAULT_MAXIMUM)
    @minimum = minimum
    @maximum = maximum
  end

  def filter(soundwave)
    new_soundwave = []
    raise "No frequency supplied" if soundwave.empty?
    raise "Sound file corrupted" if soundwave.any?{ |e| e.nil? }

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
