module Sendgrid
  module Base
    def self.included(klass)
      klass.send(:inclide, InstanceMethods)
      klass.extend ClassMethods
    end

    module ClassMethods

    end

    module InstanceMethods

    end
  end
end
