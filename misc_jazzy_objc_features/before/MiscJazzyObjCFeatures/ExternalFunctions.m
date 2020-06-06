//
//  ExternalFunctions.m
//  MiscJazzyObjCFeatures
//
//  Created by Nikolay Volosatov on 05/27/20.
//  Copyright © 2020 Jazzy. All rights reserved.
//

#import "ExternalFunctions.h"

FOUNDATION_EXPORT void functionA(int paramA, void *paramB) {
    // Does nothing
}

FOUNDATION_EXPORT void *functionB(double paramB) {
    return NULL;
}

FOUNDATION_EXPORT int functionC() {
    return 0;
}
