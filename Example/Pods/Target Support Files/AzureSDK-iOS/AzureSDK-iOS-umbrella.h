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

#import "MSAPIConnection.h"
#import "MSAPIRequest.h"
#import "MSClient.h"
#import "MSClientConnection.h"
#import "MSClientInternal.h"
#import "MSError.h"
#import "MSFilter.h"
#import "MSJSONSerializer.h"
#import "MSLocalStorage.h"
#import "MSLogin.h"
#import "MSLoginController.h"
#import "MSLoginSerializer.h"
#import "MSLoginView.h"
#import "MSNaiveISODateFormatter.h"
#import "MSPredicateTranslator.h"
#import "MSPush.h"
#import "MSPushHttp.h"
#import "MSPushRequest.h"
#import "MSQuery.h"
#import "MSRegistrationManager.h"
#import "MSSerializer.h"
#import "MSTable.h"
#import "MSTableConnection.h"
#import "MSTableRequest.h"
#import "MSURLBuilder.h"
#import "MSUser.h"
#import "MSUserAgentBuilder.h"
#import "WindowsAzureMobileServices.h"

FOUNDATION_EXPORT double AzureSDK_iOSVersionNumber;
FOUNDATION_EXPORT const unsigned char AzureSDK_iOSVersionString[];

