public enum LoggingLevel: Int {
    case verbose = 0
    case debug = 1
    case info = 2
    case warning = 3
    case error = 4
    case fatal = 5
}

extension LoggingLevel: CustomStringConvertible {
    public var description: String {
        switch self {
        case .verbose: return "VERBOSE"
        case .debug:   return "DEBUG  "
        case .info:    return "INFO   "
        case .warning: return "WARNING"
        case .error:   return "ERROR  "
        case .fatal:   return "FATAL  "
        }
    }
}
