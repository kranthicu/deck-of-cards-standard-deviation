#!/usr/bin/env ruby
require 'rubygems'
require 'ruby-prof'
require 'json'
require_relative 'mixins'

class Deck
  
  def initialize
    @deck = deck_of_cards
    @removed_cards = []
  end
  
  
  def pick_card
    card_shuffle = @deck.shuffle
    card = card_shuffle.shift
    @deck = card_shuffle
    @removed_cards << card
    return card
  end

  def pick_random
    elem = rand(0..@deck.size)
    return @deck[elem]
  end

  def pick_nth(n)
    @deck.selected_index(n)
  end

  def card_count
    deck_of_cards.size
  end
    
  def to_json
    json_format = Array.new
    deck_of_cards.each do |elem|
      json_format << Hash[elem.each_pair.to_a]
    end
    json_format
  end
  
  private
  
  @cards = []
  @removed_cards = []
  
  def deck_of_cards
    cards = []
    card = Struct.new(:suit,:num) 
    %w{ clubs diamonds hearts spades } .cycle(1) do |s|
      %w{2 3 4 5 6 7 8 9 10 J Q K A}.cycle(1) do |r|
        cards << card.new(s,r)
      end
    end
    cards
  end
end

if __FILE__==$0
  a_deck = Deck.new
  a_deck.pick_card
  a_deck.pick_random
  puts a_deck.pick_nth(2)
end
