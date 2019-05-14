
class BirthdayList
  attr_reader :list
  def initialize
    @list = []
  end

  def add(name, date)
    @list << { name: name, birthday: date }
  end

  def view
    @list.each do |hash|
      puts "#{hash[:name]}, #{hash[:birthday]}"
    end
  end
end

# mine = BirthdayList.new
# mine.add('Ed', '1979-01-19')
# mine.add('Judith', '1980-04-07')
# mine.view
