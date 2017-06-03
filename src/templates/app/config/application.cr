Kemalyst::Application.config do |app|
  # Set the binding host ip address.  Defaults to "0.0.0.0"
  # app.host = "0.0.0.0"

  # Set the port.  Defaults to 3000.
  # app.port = 3000

  # Set the environment. Defaults to development.
  # app.env = "development"

  # Set the reuse_port option. Defaults to false.
  # app.reuse_port = false

  # By default, Logging will be sent to STDOUT.  You can create a file logger and
  # assign it to the Application.
  # log = File.new("logs/#{app.env}.log", "a")
  # log.flush_on_newline = true
  # app.logger = Logger.new(log)
  # app.logger.level = Logger::DEBUG

  # creating a formatter.  This overrides the default crystal formatter
  # app.logger.formatter = Logger::Formatter.new do |severity, datetime, progname, message, io|
  #   io << "[" << datetime << " #" << Process.pid << "] "
  #   io << severity.rjust(5) << ": " << message
  # end

  # Specify custom HTTP::Handler chain.  Handlers are chained together in a link
  # list and each will call the next after processing the context.  The
  # context holds the request and response objects.  Each handler may have
  # their own config file to override default settings.  For example, the
  # Session Handler requires that you change the `secret` in the config/session.cr
  # file.

  # config.handlers.clear
  # config.handlers << Kemalyst::Handler::Logger.instance(config.logger)
  # config.handlers << Kemalyst::Handler::Error.instance
  # config.handlers << Kemalyst::Handler::Static.instance
  # config.handlers << Kemalyst::Handler::Session.instance
  # config.handlers << Kemalyst::Handler::Flash.instance
  # config.handlers << Kemalyst::Handler::Params.instance
  # config.handlers << Kemalyst::Handler::CSRF.instance
  # config.handlers << Kemalyst::Handler::Method.instance
  # config.handlers << Kemalyst::Handler::Router.instance
end
