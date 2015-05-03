module ToFile
  def filename
    "object_#{self.object_id}.txt"
  end
  def to_f
    File.open(filename, 'w') { |f| f.write(to_s)}
  end
end

class Person
  include ToFile
  attr_accessor :name

  def initialize(tmpName)
    @name = tmpName
  end
  def to_s
    name
  end
end

a = Person.new('matz')
a.to_f
a.name = 'sdssdsd'
a.to_f

