require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  attr_accessor :name, :grade, :id

  def initialize(id, name, grade)
    @id = id
    @name = name
    @grade = grade
  end

  def self.table_name
    self.to_s.downcase.pluralize
  end

  

end
