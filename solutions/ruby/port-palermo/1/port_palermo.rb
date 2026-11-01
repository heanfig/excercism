module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0,4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    pos = ship_identifier.to_s =~ /OIL|GAS/
    return :A if pos
    return :B
  end
end
