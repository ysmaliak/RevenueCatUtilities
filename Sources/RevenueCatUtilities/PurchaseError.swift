import Foundation

public enum PurchaseError: Error, LocalizedError, Equatable {
    case failedToRestore
    case noActiveEntitlement

    public var errorDescription: String? {
        switch self {
        case .failedToRestore:
            String(localized: "failedToRestoreError", bundle: .module, comment: "Failed to restore purchases error")
        case .noActiveEntitlement:
            String(localized: "noActiveEntitlementError", bundle: .module, comment: "No active entitlement error")
        }
    }

    public var failureReason: String? {
        switch self {
        case .failedToRestore:
            String(localized: "failedToRestoreReason", bundle: .module, comment: "Failed to restore purchases reason")
        case .noActiveEntitlement:
            String(localized: "noActiveEntitlementReason", bundle: .module, comment: "No active entitlement reason")
        }
    }

    public var recoverySuggestion: String? {
        switch self {
        case .failedToRestore:
            String(localized: "failedToRestoreSuggestion", bundle: .module, comment: "Failed to restore purchases suggestion")
        case .noActiveEntitlement:
            String(localized: "noActiveEntitlementSuggestion", bundle: .module, comment: "No active entitlement suggestion")
        }
    }
}
