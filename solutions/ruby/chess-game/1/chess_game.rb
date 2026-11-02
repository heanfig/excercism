module Chess
  RANKS = (1..8)
  FILES = ('A'..'H')

  def self.valid_square?(rank, file)
    return false unless RANKS.cover?(rank)
    return false unless FILES.cover?(file)

    true
  end

  def self.nickname(first_name, last_name)
    "#{first_name.upcase[...2]}#{last_name.upcase[-2...]}"
  end

  def self.move_message(first_name, last_name, square)
    nickname = self.nickname(first_name, last_name)
    file, rank = square.split('') 
    
    return "#{nickname} attempted to move to #{square}, but that is not a valid square" unless valid_square?(rank.to_i,file)

    "#{nickname} moved to #{square}"
  end
end