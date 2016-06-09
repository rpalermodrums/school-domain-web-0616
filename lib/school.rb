class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    new_roster = @roster.select do |g, student|
      g == grade
    end
    new_roster[grade]
  end

  def sort
    roster.each_with_object({}) do |(k, v), new_roster|
      new_roster[k] = v.sort
    end
  end
end
