/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "MXJSBridge.h"

#import <JavaScriptCore/JavaScriptCore.h>
#import "MXJSFlutterDefines.h"


@protocol MXEventEmitterJSExport <NSObject,JSExport>

JSExportAs(addListener,
           - (void)addListener:(NSString *)eventName
           );

JSExportAs(removeListeners,
           - (void)removeListeners:(double)count
           );

@end


/**
 * MXEventEmitter is an abstract base class to be used for modules that emit
 * events to be observed by JS.
 */
@interface MXEventEmitter : NSObject <MXBridgeModule>

@property (nonatomic, weak) MXJSBridge *bridge;

/**
 * Override this method to return an array of supported event names. Attempting
 * to observe or send an event that isn't included in this list will result in
 * an error.
 */
- (NSArray<NSString *> *)supportedEvents;

/**
 * Send an event that does not relate to a specific view, e.g. a navigation
 * or data update notification.
 */
- (void)sendEventWithName:(NSString *)name body:(id)body;
- (void)sendEventWithName:(NSString *)name body:(id)body callback:(JSValue*)jsCallbackFun;

/**
 * These methods will be called when the first observer is added and when the
 * last observer is removed (or when dealloc is called), respectively. These
 * should be overridden in your subclass in order to start/stop sending events.
 */
- (void)startObserving;
- (void)stopObserving;

- (void)addListener:(NSString *)eventName;
- (void)removeListeners:(double)count;

@end
