class Poker
  def initialize(hand)
    @hand = hand
    @suit = extract_suit
    @rank = extract_rank
    @count_rank = Hash.new(0)
    @rank.each { |rank| @count_rank[rank] += 1 }
  end

  def hand_value
    if royal_flush
      'royal_flush'
    elsif straight_flush
      'straight_flush'
    elsif four_kind
      'four_kind'
    elsif full_house
      'full_house'
    elsif flush
      'flush'
    elsif straight
      'straight'
    elsif three_kind
      'three_kind'
    elsif two_pair
      'two_pair'
    elsif pair
      'pair'
    elsif high_card
      'high_card'
    end
  end

  # 10, J, Q, K, A same suit
  def royal_flush
    compare = [10, 11, 12, 13, 1] - @rank
    compare.empty? && @suit.uniq.size <= 1
  end

  # J, 10, 9, 8, 7 same suit (numbers in sequential)
  def straight_flush
    @suit.uniq.size <= 1 && @rank.sort.each_cons(2).all? { |first, second| second - first == 1 }
  end

  # same value, different suit
  def four_kind
    @rank.uniq.size == 2 && @count_rank.value?(4)
  end

  # three cards of one rank and two cards of another rank
  def full_house
    @count_rank.value?(3) && @count_rank.value?(2)
  end

  # five cards all of the same suit, not all of sequential rank,
  def flush
    @suit.uniq.size <= 1 && !@rank.sort.each_cons(2).all? { |first, second| second - first == 1 }
  end

  # five cards of sequential rank, not all of the same suit
  def straight
    @suit.uniq.size != 1 && @rank.sort.each_cons(2).all? { |first, second| second - first == 1 }
  end

  # three cards of one rank and two cards of two other ranks
  def three_kind
    @count_rank.value?(3) && @count_rank.value?(1)
  end

  # two cards of one rank, two cards of another rank and one card of a third rank
  def two_pair
    @count_rank.select { |_k, v| v == 2 }.count == 2 && @count_rank.value?(1)
  end

  # two cards of one rank and three cards of three other ranks
  def pair
    @count_rank.value?(2) && @count_rank.select { |_k, v| v == 1 }.count == 3
  end

  # Nothing, only reorder de cards
  def high_card
    @count_rank.select { |_k, v| v == 1 }.count == 5
  end

  private

  def extract_suit
    @hand.map { |card| card[1] }
  end

  def extract_rank
    hand = @hand.map { |card| card[0] }
    change_letter_to_numbers(hand)
  end

  def change_letter_to_numbers(hand)
    hand.map do |rank|
      case rank
      when 'K'
        13
      when 'Q'
        12
      when 'J'
        11
      when 'A'
        1
      else
        rank.to_i
      end
    end
  end
end

x = Poker.new([%w[5 s], %w[6 d], %w[K h], %w[2 s], %w[A h]])

puts x.hand_value
