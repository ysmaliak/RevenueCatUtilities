import Foundation

enum PurchaseError: Error, LocalizedError, Equatable {
    case failedToRestore
    case noActiveEntitlement

    var errorDescription: String? {
        switch self {
        case .failedToRestore:
            NSLocalizedString("failedToRestoreError", comment: "Failed to restore purchases error")
        case .noActiveEntitlement:
            NSLocalizedString("noActiveEntitlementError", comment: "No active entitlement error")
        }
    }

    var failureReason: String? {
        switch self {
        case .failedToRestore:
            NSLocalizedString("failedToRestoreReason", comment: "Failed to restore purchases reason")
        case .noActiveEntitlement:
            NSLocalizedString("noActiveEntitlementReason", comment: "No active entitlement reason")
        }
    }

    var recoverySuggestion: String? {
        switch self {
        case .failedToRestore:
            NSLocalizedString("failedToRestoreSuggestion", comment: "Failed to restore purchases suggestion")
        case .noActiveEntitlement:
            NSLocalizedString("noActiveEntitlementSuggestion", comment: "No active entitlement suggestion")
        }
    }
}
