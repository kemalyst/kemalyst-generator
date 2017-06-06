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

  # app.handlers.clear
  # app.handlers << Kemalyst::Handler::Logger.instance(config.logger)
  # app.handlers << Kemalyst::Handler::Error.instance
  # app.handlers << Kemalyst::Handler::Static.instance
  # app.handlers << Kemalyst::Handler::Session.instance
  # app.handlers << Kemalyst::Handler::Flash.instance
  # app.handlers << Kemalyst::Handler::Params.instance
  # app.handlers << Kemalyst::Handler::CSRF.instance
  # app.handlers << Kemalyst::Handler::Method.instance
  # app.handlers << Kemalyst::Handler::Router.instance
end
