class Student
  #  with DB[:conn]
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id =id
  end

  def self.create_table
    sql = <<-SQL CREATE TABLE students IF NOT CREATED(
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
  end



end
