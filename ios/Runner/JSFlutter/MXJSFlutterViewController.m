//
//  MXJSFlutterViewController.m
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import "MXJSFlutterViewController.h"
#import "MXJSFlutterEngine.h"
#import "MXJSFlutter.h"

@interface MXJSFlutterViewController ()
{
    BOOL _flutterEngineIsDidRender;
}

@property (nonatomic,strong)  FlutterMethodChannel* basicChannel;
@property (nonatomic,strong) NSMutableArray<FlutterMethodCall*> *callFlutterQueue;

@end

@implementation MXJSFlutterViewController

- (instancetype)initJSAppName:(NSString*)jsAppName
{
    if (self = [super init])
    {
        _flutterEngineIsDidRender = NO;
        _jsAppName = jsAppName;
        [self setup];
    }
    return self;
}



- (instancetype)initWithEngine:(MXJSFlutterEngine*)jsFlutterEngine jsAppName:(NSString*)jsAppName
{
    self  = [super init];
    if (self) {
        
        _jsFlutterEngine = jsFlutterEngine;
         _jsAppName = jsAppName;
        
        [self setup];
    }
    
    return self;
    
}

- (void)setup
{
    self.callFlutterQueue = [NSMutableArray arrayWithCapacity:2];
    __weak MXJSFlutterViewController *weakSelf = self;
    
    [self setFlutterViewDidRenderCallback:^{
        _flutterEngineIsDidRender = YES;
        
        for (FlutterMethodCall *call in weakSelf.callFlutterQueue) {
            [weakSelf.basicChannel invokeMethod:call.method arguments:call.arguments];
        }
    }];
    
    [self setupChannel];
    
    if (!self.jsFlutterEngine)
    {
        NSString *rootDir = [JSFLUTTER_SRC_BASE_DIR stringByAppendingPathComponent:JSFLUTTER_SRC_DIR];
        _jsFlutterEngine = [[MXJSFlutterEngine alloc] initRootPath:rootDir];
        _jsFlutterEngine.flutterViewController = self;
    }
    
}

- (void)setupChannel
{
    self.basicChannel = [FlutterMethodChannel
                         methodChannelWithName:@"js_flutter.flutter_main_channel"
                         binaryMessenger:self];
    
    __weak MXJSFlutterViewController *weakSelf = self;
    
    [self.basicChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        
        MXJSFlutterViewController *strongSelf = weakSelf;
        
        if (!strongSelf) {
            return;
        }
        
        if ([call.method isEqualToString:@"callNativeRunJSApp"]) {
            [strongSelf callNativeRunJSApp:call.arguments];
        }
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.jsAppName && self.jsAppName.length > 0)
    {
        [self runJSApp:self.jsAppName];
    }
}

- (void)runJSApp:(NSString*)appName
{
    [self.jsFlutterEngine runApp:appName pageName:nil];
    
}

//MARK: - flutter -> Native
//由Flutter 代码启动JSApp。 可以用在先显示Dart页面，然后路由调转到JS页面
//启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
-(void)callNativeRunJSApp:(id)arguments
{
    NSDictionary *argsMap = arguments;
    NSString *jsAppName = argsMap[@"jsAppName"];
    NSString *pageName = argsMap[@"pageName"];
    
    [self.jsFlutterEngine runApp:jsAppName pageName:pageName];
}

//MARK: - native -> flutter
//--------------------------------------------
//调用Flutter切换到JSWidget，显示JS渲染的内容
//MARK: - native -> flutter
//--------------------------------------------
- (void)callFlutterReloadAppWithJSWidgetData:(NSString*)widgetData
{
    [self callFlutterReloadAppWithRouteName:@"MXJSWidget"  widgetData:widgetData];
}

- (void)callFlutterReloadAppWithRouteName:(NSString*)routeName widgetData:(NSString*)widgetData
{
    routeName = routeName?routeName:@"";
    widgetData = widgetData?widgetData:@"";
    
    FlutterMethodCall* call  = [FlutterMethodCall methodCallWithMethodName:@"reloadApp" arguments:@{@"routeName":routeName,@"widgetData":widgetData,}];
    
    if (!_flutterEngineIsDidRender) {
        
        [self.callFlutterQueue addObject:call];
        return;
    }
    
    [self.basicChannel invokeMethod:call.method arguments:call.arguments];
}

@end

