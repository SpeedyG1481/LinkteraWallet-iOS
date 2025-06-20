//
//  PowerFactor.h
//  PowerFactor
//
//  Created by Onur Yenigün / Architecht on 31.08.2016.
//  Copyright © 2016 Onur Yenigün / Architecht. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSData+SHA.h"

//! Project version number for PowerFactor.
FOUNDATION_EXPORT double PowerFactorVersionNumber;

//! Project version string for PowerFactor.
FOUNDATION_EXPORT const unsigned char PowerFactorVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <PowerFactor/PublicHeader.h>

void disable_gdb();
bool AmIDebugged();
bool detectInjectedLibraries();
char* getBuildInfoPart1();
char* getBuildInfoPart2();
char* getGeneralAesKeyOnNativeCode();
char* getGeneralAesKeyForNonceOnNativeCode();
long* getSaltOnNativeCode();
