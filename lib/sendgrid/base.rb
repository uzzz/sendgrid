module Sendgrid
  module Base
    def self.included(klass)
      klass.send(:include, InstanceMethods)
      klass.extend ClassMethods
    end

    module ClassMethods
      def sendgrid
        alias_method_chain :mail, :sendgrid
      end
    end

    module InstanceMethods
      def mail_with_sendgrid(headers = {}, &block)
        mail_without_sendgrid(headers, &block)
      end
    end
  end
end
