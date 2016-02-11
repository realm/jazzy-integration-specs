//
//  ObjCTopLevelClass.h
//  MiscJazzyObjCFeatures
//
//  Created by Esad Hajdarevic on 11/02/16.
//  Copyright (c) 2016 PSPDFKit GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjCTopLevelClass : NSObject
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

