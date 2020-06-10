//
//  ObjCTopLevelClass.m
//  MiscJazzyObjCFeatures
//
//  Created by Esad Hajdarevic on 11/02/16.
//  Copyright (c) 2016 PSPDFKit GmbH. All rights reserved.
//

#import "ObjCTopLevelClass.h"

@interface ObjCTopLevelClass()
/// Documented, but private
- (void)classExtensionMethod;
@end

@implementation ObjCTopLevelClass
- (void)categoryMethod:(NSString*)argument {}
- (void)markedCategoryMethod:(NSString*)argument {}
- (void)classExtensionMethod {}
- (SomeEnum)methodReturningEnum:(NSString*)param {
    return SomeEnumFoo;
}
@end

@implementation ObjCMidLevelClass
- (nullable Manager *)prepareManager {
    return nil;
}
@end

@implementation NSValue (SomeAdditions)

+ (instancetype)valueWithSomeEnum:(SomeEnum)someEnum {
    return [[self class] valueWithBytes:&someEnum objCType:@encode(SomeEnum)];
}

- (SomeEnum)someEnumValue {
    SomeEnum someEnum;
    [self getValue:&someEnum];
    return someEnum;
}

@end

@implementation NSValue (SomeMoreAdditions)

+ (instancetype)valueWithSomeMoreEnum:(SomeEnum)someEnum {
    return [[self class] valueWithBytes:&someEnum objCType:@encode(SomeEnum)];
}

- (SomeEnum)someMoreEnumValue {
    SomeEnum someEnum;
    [self getValue:&someEnum];
    return someEnum;
}

@end

@implementation ObjCClassWithProtocol

- (NSString *)stringProperty {
    return @"";
}

@end

@implementation ObjCEmptyClass

@end

