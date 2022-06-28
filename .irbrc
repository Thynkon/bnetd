if defined? Mongoid
  Mongoid.logger = Logger.new($stdout)
end
