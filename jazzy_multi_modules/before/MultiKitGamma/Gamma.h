// MultiKitGamma / Gamma.h

@import Foundation;

/// An Objective-C symbol with no children
extern int GAMMA_C_IDENT;

/// An Objective-C category on an external type
@interface NSURL (MyCategory)
  /// A property added by Gamma
  - (NSString *)gammaProperty;
@end

/// An Objective-C symbol with children
@interface GammaClass : NSObject
  /// Gamma method
  - (void)gammaMethod:(NSString *)argument;
@end
