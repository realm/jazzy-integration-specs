//
//  ExternalFunctions.h
//  MiscJazzyObjCFeatures
//
//  Created by Nikolay Volosatov on 05/27/20.
//  Copyright © 2020 Jazzy. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 A function with two arguments.

 @note This is a note.

 @param paramA First argument
 @param paramB Second argument
 */
FOUNDATION_EXPORT void functionA(int paramA, void *paramB);

/**
A function with a single argument.

@param paramC Single argument
@return Just NULL
*/
FOUNDATION_EXPORT void *functionB(double paramC) __attribute__((deprecated("Use `functionA`.")));

/// A function without description for return value.
FOUNDATION_EXPORT int functionC();
