//
//  SomeEnum.h
//  MiscJazzyObjcFeatures
//
//  Created by Esad Hajdarevic on 06/04/16.
//  Copyright © 2016 PSPDFKit GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, SomeEnum) {
    SomeEnumFoo = 1,
    SomeEnumBar,
    SomeEnumBaz  __attribute__((deprecated))
};

/** An example of an extensible enumeration. */
typedef NSString *ExtensibleEnum NS_TYPED_EXTENSIBLE_ENUM;

/// The value is `@"foo"`.
extern ExtensibleEnum const ExtensibleEnumFoo;

/// Second option of the extensible enumeration.
extern ExtensibleEnum const ExtensibleEnumBar;

/// Deprecated option of an extensible enumeration.
extern ExtensibleEnum const ExtensibleEnumBaz __attribute__((deprecated("Use `ExtensibleEnumBar`.")));
