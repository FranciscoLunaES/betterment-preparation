class Bonus
  def initialize(days)
    @days = days
    @day = 0
    @bonus = 0
  end

  def bonus_in_quarter
    if @day < 33
      same_day?(0)
    elsif (33..40).include?(@day)
      same_day?(365)
    elsif (41..48).include?(@day)
      same_day?(525)
    elsif @day > 48
      same_day?(625)
    end
  end

  private

  def same_day?(extra)
    return "Bono: #{@bonus}" unless @days >= @day

    @bonus += extra
    @day += 1
    bonus_in_quarter
  end
end

x = Bonus.new(44)
puts x.bonus_in_quarter
