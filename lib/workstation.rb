class Workstation
  def filter(soundwave)
    soundwave.each do |freq|
      puts freq
      if freq < 40
        puts true
        freq = 40
      end
      soundwave = [freq]
    end
    return soundwave
  end
end
