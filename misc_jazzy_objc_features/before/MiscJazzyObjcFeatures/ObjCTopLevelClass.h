//
//  ObjCTopLevelClass.h
//  MiscJazzyObjCFeatures
//
//  Created by Esad Hajdarevic on 11/02/16.
//  Copyright (c) 2016 PSPDFKit GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SomeEnum.h"

@class Manager;

/// A dummy top level Objective-C class. Doesn't do much.
@interface ObjCTopLevelClass : NSObject
/**
 Always returns `SomeEnumFoo`
 
 @return `SomeEnumFoo` even if `-[NSObject load]` fails
 */
- (SomeEnum)methodReturningEnum:(NSString*)param;
@end

@interface ObjCTopLevelClass (SomeCategory)
/// Extends ObjCTopLevelClass in mysterious ways
- (void)categoryMethod:(NSString*)argument;
@end

@interface ObjCTopLevelClass (MarkedCategory)
#pragma mark Some marker
/// Extends ObjCTopLevelClass in even more mysterious ways
- (void)markedCategoryMethod:(NSString*)argument;
@end

/**
 A mid-level class. Does a little more than its superclass via
 `-prepareManager`.
 */
@interface ObjCMidLevelClass : ObjCTopLevelClass
/// Prepare a mid-level manager.
- (Manager *)prepareManager;
@end
