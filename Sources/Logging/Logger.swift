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

    public static func verbose(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        delegate.log(text, level: .verbose, file: file, function: function, line: line, column: column)
    }

    public static func debug(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        delegate.log(text, level: .debug, file: file, function: function, line: line, column: column)
    }

    public static func info(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        delegate.log(text, level: .info, file: file, function: function, line: line, column: column)
    }

    public static func warning(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        delegate.log(text, level: .warning, file: file, function: function, line: line, column: column)
    }

    public static func error(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        delegate.log(text, level: .error, file: file, function: function, line: line, column: column)
    }

    public static func fatal(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        delegate.log(text, level: .fatal, file: file, function: function, line: line, column: column)
    }
}
