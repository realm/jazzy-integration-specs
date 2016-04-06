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
@end

