import Logging

//Logger.level = .debug

Logger.delegate = PrintLogger(level: .debug, showLocation: true)

Logger.info("Hello world")
Logger.warning("This is a warning")
Logger.info("One more message")
Logger.debug("High memory")
Logger.debug("Zuper duper")
Logger.info("Bye world")
