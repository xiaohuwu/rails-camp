class MyLogger
 # private_class_method :new
  @@logger = nil

=begin
  def MyLogger.create   #类方法
    @@logger = new unless @@logger
    @@logger
  end
=end

=begin
  def self.create   #类方法
    @@logger = new unless @@logger
    @@logger
  end
=end

  class << self   #类方法
    def create
      @@logger = new unless @@logger
      @@logger
    end
  end

end

p MyLogger.create.object_id

p MyLogger.create.object_id
