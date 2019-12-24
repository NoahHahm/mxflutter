//
//  MXJSEngine.h
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MXJSExecutor.h"

NS_ASSUME_NONNULL_BEGIN

/*
 *MXJSEngine
 *负责Native/JS 二方衔接
 *导出Native业务接口
 */
@interface MXJSEngine : NSObject

@property(nonatomic,strong) MXJSExecutor *jsExecutor;

- (instancetype)init;

- (void)addSearchDir:(NSString*)dir;


@end

NS_ASSUME_NONNULL_END
