public protocol Logging {
    var level: LoggingLevel { get set }
    func log(_ text: String, level: LoggingLevel, file: String, function: String, line: UInt, column: UInt)
}

extension Logging {
    public func verbose(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        log(text, level: .verbose, file: file, function: function, line: line, column: column)
    }

    public func debug(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        log(text, level: .debug, file: file, function: function, line: line, column: column)
    }

    public func info(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        log(text, level: .info, file: file, function: function, line: line, column: column)
    }

    public func warning(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        log(text, level: .warning, file: file, function: function, line: line, column: column)
    }

    public func error(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        log(text, level: .error, file: file, function: function, line: line, column: column)
    }

    public func fatal(_ text: String, file: String = #file, function: String = #function, line: UInt = #line, column: UInt = #column) {
        log(text, level: .fatal, file: file, function: function, line: line, column: column)
    }
}

