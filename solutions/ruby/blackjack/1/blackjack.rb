module Blackjack

  def self.parse_card(card)
    case card
    when "ace" then 11
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten" then 10
    when "jack" then 10
    when "queen" then 10
    when "king" then 10
    else 0
    end
  end

  def self.card_range(card1, card2)
    card_value = self.parse_card(card1) + self.parse_card(card2)
    case card_value
    when 4..11 then "low"
    when 12..16 then "mid"
    when 17..20 then "high"
    else "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    card_sum = self.parse_card(card1) + self.parse_card(card2)
    dealer_card_value = self.parse_card(dealer_card)

    return "P" if card1 == "ace" && card2 == "ace"
    return "W" if (card_sum) == 21 && !["ace", "ten", "queen", "king"].include?(dealer_card)
    return "S" if (17..20).cover?(card_sum)
    return "H" if (12..16).cover?(card_sum) && dealer_card_value  >= 7
    return "S" if (12..16).cover?(card_sum) && dealer_card_value  < 7
    return "H" if card_sum <= 11

    "S"
  end
end
