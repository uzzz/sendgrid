class Railtie < ::Rails::Railtie
  initializer "sendgrid.on_rails_init" do
    ActiveSupport.on_load :action_mailer do
      ActionMailer::Base.send :include, ::Sendgrid::Base
    end
  end
end
