
#!/usr/bin/env ruby
require_relative 'deck'


puts "C1: Total number of picks executed."
puts "C2: Total number of unique cards picked in these total picks."
puts "C3: Average number of times each of these unique picked cards was picked."
puts "C4: The standard_deviation from this average in Column 3."
print "C1\tC2\tC3\tC4\n"
print "--\t--\t--\t--\n"

1.upto(100) do |multiplier|

  freq_dist = {}

  1.upto( 52 * multiplier ) do
    deck_with_52_cards = Deck.new
    a_card = deck_with_52_cards.pick_card
    card_as_key = a_card.suit + "_" + a_card.num
    freq_dist[card_as_key] = freq_dist[card_as_key].nil? ? 1 : freq_dist[card_as_key] + 1
  end

  print freq_dist.values.sum, "\t", freq_dist.keys.length, "\t", freq_dist.values.average.round(3), "\t", freq_dist.values.standard_deviation.round(3), "\n"

end

