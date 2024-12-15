import Foundation
import RevenueCat

extension SubscriptionPeriod {
    public var periodTitle: String {
        switch (unit, value) {
        case (.day, 1):
            String(localized: "onePeriodDay", bundle: .module, comment: "One day period")
        case (.day, let value):
            String(format: String(localized: "periodDays", bundle: .module, comment: "Multiple days period"), value)
        case (.week, 1):
            String(localized: "onePeriodWeek", bundle: .module, comment: "One week period")
        case (.week, let value):
            String(format: String(localized: "periodWeeks", bundle: .module, comment: "Multiple weeks period"), value)
        case (.month, 1):
            String(localized: "onePeriodMonth", bundle: .module, comment: "One month period")
        case (.month, let value):
            String(format: String(localized: "periodMonths", bundle: .module, comment: "Multiple months period"), value)
        case (.year, 1):
            String(localized: "onePeriodYear", bundle: .module, comment: "One year period")
        case (.year, let value):
            String(format: String(localized: "periodYears", bundle: .module, comment: "Multiple years period"), value)
        }
    }

    public var subscriptionPeriodTitle: String {
        switch (unit, value) {
        case (.day, 1):
            String(localized: "periodDay", bundle: .module, comment: "Day period")
        case (.day, let value):
            String(format: String(localized: "periodDays", bundle: .module, comment: "Multiple days period"), value)
        case (.week, 1):
            String(localized: "periodWeek", bundle: .module, comment: "Week period")
        case (.week, let value):
            String(format: String(localized: "periodWeeks", bundle: .module, comment: "Multiple weeks period"), value)
        case (.month, 1):
            String(localized: "periodMonth", bundle: .module, comment: "Month period")
        case (.month, let value):
            String(format: String(localized: "periodMonths", bundle: .module, comment: "Multiple months period"), value)
        case (.year, 1):
            String(localized: "periodYear", bundle: .module, comment: "Year period")
        case (.year, let value):
            String(format: String(localized: "periodYears", bundle: .module, comment: "Multiple years period"), value)
        }
    }
}
