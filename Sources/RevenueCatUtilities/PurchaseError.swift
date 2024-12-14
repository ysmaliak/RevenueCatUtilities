import Foundation

public enum PurchaseError: Error, LocalizedError, Equatable {
    case failedToRestore
    case noActiveEntitlement

    public var errorDescription: String? {
        switch self {
        case .failedToRestore:
            String(localized: "failedToRestoreError", comment: "Failed to restore purchases error")
        case .noActiveEntitlement:
            String(localized: "noActiveEntitlementError", comment: "No active entitlement error")
        }
    }

    public var failureReason: String? {
        switch self {
        case .failedToRestore:
            String(localized: "failedToRestoreReason", comment: "Failed to restore purchases reason")
        case .noActiveEntitlement:
            String(localized: "noActiveEntitlementReason", comment: "No active entitlement reason")
        }
    }

    public var recoverySuggestion: String? {
        switch self {
        case .failedToRestore:
            String(localized: "failedToRestoreSuggestion", comment: "Failed to restore purchases suggestion")
        case .noActiveEntitlement:
            String(localized: "noActiveEntitlementSuggestion", comment: "No active entitlement suggestion")
        }
    }
}
