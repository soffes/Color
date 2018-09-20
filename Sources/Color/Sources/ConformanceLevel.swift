/// Derived from the Web Content Accessibility Guidelines (WCAG) 2.0 conformance 
///
/// From https://www.w3.org/TR/WCAG20
public enum ConformanceLevel: Int {

	// MARK: - Cases
	
	/// Failing score
	///
	/// Does not meet a WCAG 2.0 standard.
	case fail

	/// Minimum for large scale content.
	///
	/// From WCAG 2.0 § 1.4.3
	case aaLarge

	/// Minumm for regular scale content.
	///
	/// From WCAG 2.0 § 1.4.3
	case aa

	/// Enhanced for regular scale content.
	///
	/// From WCAG 2.0 § 1.4.6
	case aaa


	// MARK: - Initializers

	/// Create a ConformanceLevel from a contrast ratio.
	///
	/// - parameter contrastRatio: A value from 1.0-21.0
	public init(contrastRatio: Double) {
		if contrastRatio >= 7 {
			self = .aaa
			return
		}

		if contrastRatio >= 4.5 {
			self = .aa
			return
		}

		if contrastRatio >= 3 {
			self = .aaLarge
			return
		}

		self = .fail
	}
}


extension ConformanceLevel: CustomStringConvertible {
	public var description: String {
		switch self {
		case .fail: return "Fail"
		case .aaLarge: return "AA+"
		case .aa: return "AA"
		case .aaa: return "AAA"
		}
	}
}
