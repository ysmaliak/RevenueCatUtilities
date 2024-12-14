import Foundation
import RevenueCat

extension SubscriptionPeriod {
    public var periodTitle: String {
        switch (unit, value) {
        case (.day, 1):
            String(localized: "onePeriodDay", comment: "One day period")
        case (.day, let value):
            String(format: String(localized: "periodDays", comment: "Multiple days period"), value)
        case (.week, 1):
            String(localized: "onePeriodWeek", comment: "One week period")
        case (.week, let value):
            String(format: String(localized: "periodWeeks", comment: "Multiple weeks period"), value)
        case (.month, 1):
            String(localized: "onePeriodMonth", comment: "One month period")
        case (.month, let value):
            String(format: String(localized: "periodMonths", comment: "Multiple months period"), value)
        case (.year, 1):
            String(localized: "onePeriodYear", comment: "One year period")
        case (.year, let value):
            String(format: String(localized: "periodYears", comment: "Multiple years period"), value)
        }
    }

    public var subscriptionPeriodTitle: String {
        switch (unit, value) {
        case (.day, 1):
            String(localized: "periodDay", comment: "Day period")
        case (.day, let value):
            String(format: String(localized: "periodDays", comment: "Multiple days period"), value)
        case (.week, 1):
            String(localized: "periodWeek", comment: "Week period")
        case (.week, let value):
            String(format: String(localized: "periodWeeks", comment: "Multiple weeks period"), value)
        case (.month, 1):
            String(localized: "periodMonth", comment: "Month period")
        case (.month, let value):
            String(format: String(localized: "periodMonths", comment: "Multiple months period"), value)
        case (.year, 1):
            String(localized: "periodYear", comment: "Year period")
        case (.year, let value):
            String(format: String(localized: "periodYears", comment: "Multiple years period"), value)
        }
    }
}
