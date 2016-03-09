class Promotion

  def initialize(description, calculator)
    @description = description
    @calculator = calculator
  end

  def apply(total)
    total - @calculator[total]
  end
end