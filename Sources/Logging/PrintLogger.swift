import Foundation

public final class PrintLogger: Logging {
    public var level: LoggingLevel
    public var showLocation: Bool
    public let dateFormatter: DateFormatter

    public init(level: LoggingLevel = .info, showLocation: Bool = false, dateFormat: String = "yyyy-MM-dd HH:mm:ss ZZZZZ") {
        self.level = level
        self.showLocation = showLocation
        self.dateFormatter = DateFormatter()
        self.dateFormatter.dateFormat = dateFormat
    }

    public func log(_ text: @autoclosure () -> String, level entryLevel: LoggingLevel, file: String, function: String, line: UInt) {
        if entryLevel.rawValue < self.level.rawValue {
            return
        }

        if showLocation {
            // Ignore the function, not really useful.
            print("\(dateFormatter.string(from: Date())) \(entryLevel) \(text()) (\(file):\(line))")
        } else {
            print("\(dateFormatter.string(from: Date())) \(entryLevel) \(text())")
        }
    }
}
