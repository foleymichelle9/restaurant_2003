class Restaurant

  attr_reader :opening_time, :name, :dishes, :closing_time

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(closing_time)
      ((@opening_time.to_i) + closing_time).to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    return true if @opening_time.to_i <= 12
    false
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(time)
    @closing_time.find do |time|
      
    @name + " will be closing at"
  end
end
