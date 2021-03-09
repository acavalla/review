class Workstation
  attr_reader :minimum, :maximum
  DEFAULT_MINIMUM = 40
  DEFAULT_MAXIMUM = 1000
  def initialize(minimum = DEFAULT_MINIMUM, maximum = DEFAULT_MAXIMUM)
    @minimum = minimum
    @maximum = maximum
  end

  def filter(soundwave)
    @soundwave = soundwave
    sound_check
    transform
  end

  def transform
    new_soundwave = @soundwave.map { |freq|
      if freq < @minimum
        freq = @minimum
      elsif freq > @maximum
        freq = @maximum
      else freq = freq
      end }
    end

  def sound_check
    raise "No frequency supplied" if @soundwave.empty?

    raise "Sound file corrupted" if @soundwave.any?{ |e| e.nil? }
  end
end
