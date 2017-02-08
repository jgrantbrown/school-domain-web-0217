# code here!
require "pry"
class School
  attr_accessor :school ,:roster

  def initialize (school)
    @school=school
    @roster={}

  end

  def add_student(name,grade)
    #@roster={grade=> [name]}
    if @roster[grade]==nil
    @roster[grade]=[]
  end
    @roster[grade]<<name
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    new_hash={}
    @roster.collect{|keys, values|
      new_hash[keys]=values.sort
    }
    new_hash
  end


end
