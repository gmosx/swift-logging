public struct Logger {
    public static var delegate: Logging = PrintLogger()

    public static var level: LoggingLevel {
        get {
            return delegate.level
        }
        set {
            delegate.level = newValue
        }
    }
    
    public static func log(_ text: @autoclosure () -> String, level: LoggingLevel, file: String, function: String, line: UInt) {
        delegate.log(text, level: level, file: file, function: function, line: line)
    }

    public static func verbose(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        delegate.log(text, level: .verbose, file: file, function: function, line: line)
    }

    public static func debug(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        delegate.log(text, level: .debug, file: file, function: function, line: line)
    }

    public static func info(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        delegate.log(text, level: .info, file: file, function: function, line: line)
    }

    public static func warning(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        delegate.log(text, level: .warning, file: file, function: function, line: line)
    }

    public static func error(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        delegate.log(text, level: .error, file: file, function: function, line: line)
    }

    public static func fatal(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        delegate.log(text, level: .fatal, file: file, function: function, line: line)
    }
}
