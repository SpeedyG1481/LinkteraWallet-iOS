#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "KycSdkPlugin.h"

FOUNDATION_EXPORT double kyc_sdk_pluginVersionNumber;
FOUNDATION_EXPORT const unsigned char kyc_sdk_pluginVersionString[];

