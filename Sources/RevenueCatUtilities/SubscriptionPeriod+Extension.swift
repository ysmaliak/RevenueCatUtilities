import Foundation
import RevenueCat

extension SubscriptionPeriod {
    public var periodTitle: String {
        switch (unit, value) {
        case (.day, 1):
            NSLocalizedString("onePeriodDay", comment: "One day period")
        case (.day, let value):
            String(format: NSLocalizedString("periodDays", comment: "Multiple days period"), value)
        case (.week, 1):
            NSLocalizedString("onePeriodWeek", comment: "One week period")
        case (.week, let value):
            String(format: NSLocalizedString("periodWeeks", comment: "Multiple weeks period"), value)
        case (.month, 1):
            NSLocalizedString("onePeriodMonth", comment: "One month period")
        case (.month, let value):
            String(format: NSLocalizedString("periodMonths", comment: "Multiple months period"), value)
        case (.year, 1):
            NSLocalizedString("onePeriodYear", comment: "One year period")
        case (.year, let value):
            String(format: NSLocalizedString("periodYears", comment: "Multiple years period"), value)
        }
    }

    public var subscriptionPeriodTitle: String {
        switch (unit, value) {
        case (.day, 1):
            NSLocalizedString("periodDay", comment: "Day period")
        case (.day, let value):
            String(format: NSLocalizedString("periodDays", comment: "Multiple days period"), value)
        case (.week, 1):
            NSLocalizedString("periodWeek", comment: "Week period")
        case (.week, let value):
            String(format: NSLocalizedString("periodWeeks", comment: "Multiple weeks period"), value)
        case (.month, 1):
            NSLocalizedString("periodMonth", comment: "Month period")
        case (.month, let value):
            String(format: NSLocalizedString("periodMonths", comment: "Multiple months period"), value)
        case (.year, 1):
            NSLocalizedString("periodYear", comment: "Year period")
        case (.year, let value):
            String(format: NSLocalizedString("periodYears", comment: "Multiple years period"), value)
        }
    }
}
