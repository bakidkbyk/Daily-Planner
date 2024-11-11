// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {

  public enum DetailPlanner {
    /// Olustur
    public static let actionButtonText = L10n.tr("Localizable", "DetailPlanner.actionButtonText")
    /// Vazgec
    public static let cancelButtontext = L10n.tr("Localizable", "DetailPlanner.cancelButtontext")
    /// Gun
    public static let dayLabel = L10n.tr("Localizable", "DetailPlanner.dayLabel")
    /// Aciklama (Istege bagli)
    public static let descriptionLabel = L10n.tr("Localizable", "DetailPlanner.descriptionLabel")
    /// Saat
    public static let hourLabel = L10n.tr("Localizable", "DetailPlanner.hourLabel")
    /// Planlayici Olustur
    public static let plannerDetailTitleLabel = L10n.tr("Localizable", "DetailPlanner.plannerDetailTitleLabel")
    /// Planlayici Adi
    public static let plannerNameLabel = L10n.tr("Localizable", "DetailPlanner.plannerNameLabel")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    var format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    if let value = Localize.shared.strings[key] {
        format = value
    }
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
