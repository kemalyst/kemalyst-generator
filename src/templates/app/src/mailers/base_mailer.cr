class BaseMailer < Kemalyst::Mailer
  def initialize
    super
    from "from@example.com"
  end
end
