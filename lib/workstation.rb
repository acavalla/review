class Workstation
  attr_reader :minimum
  def initialize
    @minimum = 40
  end

  def filter(soundwave)
    new_soundwave = []
    soundwave.each_with_index do |freq, i|
      if freq < 40
        freq = 40
      elsif freq > 1000
        freq = 1000
      end
      new_soundwave[i] = freq
    end
    return new_soundwave
  end
end
