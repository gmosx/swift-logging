import Foundation

public final class PrintLogger: Logging {
    public var level: LoggingLevel
    public var showLocation: Bool
    public let dateFormatter: DateFormatter

    public init(level: LoggingLevel = .info, showLocation: Bool = false, dateFormat: String = "yyyy-MM-dd HH:mm:ss.SSS ZZZZZ") {
        self.level = level
        self.showLocation = showLocation
        self.dateFormatter = DateFormatter()
        self.dateFormatter.dateFormat = dateFormat
    }

    public func log(_ text: String, level entryLevel: LoggingLevel, file: String, function: String, line: UInt, column: UInt) {
        if entryLevel.rawValue < self.level.rawValue {
            return
        }

        if showLocation {
            print("\(dateFormatter.string(from: Date())) \(entryLevel) \(text) (\(file):\(function):\(line):\(column))")
        } else {
            print("\(dateFormatter.string(from: Date())) \(entryLevel) \(text)")
        }
    }
}
