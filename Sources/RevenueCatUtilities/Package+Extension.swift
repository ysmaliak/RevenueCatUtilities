import Foundation
import RevenueCat

extension Package {
    public var localizedActionTitle: String {
        if let introDiscount = storeProduct.introductoryDiscount, introDiscount.price == 0 {
            String(localized: "startFreeTrial", bundle: .module, comment: "Start free trial button text with period")
        } else {
            String(localized: "subscribe", bundle: .module, comment: "Subscribe button text")
        }
    }

    public var localizedPriceDescription: String? {
        if let introDiscount = storeProduct.introductoryDiscount, let subscriptionPeriod = storeProduct.subscriptionPeriod {
            switch introDiscount.price {
            case 0:
                return String(
                    format: String(localized: "freeTrialThenPrice", bundle: .module, comment: "Free trial then price description"),
                    introDiscount.subscriptionPeriod.periodTitle,
                    "\(storeProduct.localizedPriceString)/\(subscriptionPeriod.subscriptionPeriodTitle)"
                )

            default:
                return String(
                    format: String(localized: "priceForPeriod", bundle: .module, comment: "Price for period description"),
                    introDiscount.localizedPriceString,
                    introDiscount.subscriptionPeriod.periodTitle
                )
            }
        } else if let subscriptionPeriod = storeProduct.subscriptionPeriod {
            return "\(storeProduct.localizedPriceString)/\(subscriptionPeriod.subscriptionPeriodTitle)"
        }

        return nil
    }

    public var pricePerDay: Double {
        let price = Double(truncating: storeProduct.price as NSDecimalNumber)

        guard let period = storeProduct.subscriptionPeriod else {
            return price
        }

        let daysInPeriod = switch period.unit {
        case .day:
            Double(period.value)
        case .week:
            Double(period.value) * 7
        case .month:
            Double(period.value) * 30.437
        case .year:
            Double(period.value) * 365.25
        @unknown default:
            switch period.unit.rawValue {
            case 0:
                Double(period.value)
            case 1:
                Double(period.value) * 7
            case 2:
                Double(period.value) * 30.437
            case 3:
                Double(period.value) * 365.25
            default:
                Double(period.value)
            }
        }

        return price / daysInPeriod
    }
}
