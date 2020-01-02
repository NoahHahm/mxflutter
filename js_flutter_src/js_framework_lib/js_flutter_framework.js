let {
  DartClass,
  FlutterWidget,
  Size,
  Color,
  EdgeInsets,
  FlutterWidgetMirrorMgr,
  IconThemeData,
  Key,
  Brightness,
  Colors,
  ColorScheme,
  ButtonThemeData,
} = require("./js_flutter_basic_types.js");

let { TextTheme } = require("./js_flutter_text.js");

const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const dart = dart_sdk.dart;

//全局函数
function runApp(app) {
  MXNativeJSFlutterAppProxy.callNativeSetCurrentJSApp(app);
}

//Native 接口封装
class MXNativeJSFlutterAppProxy {
  static callNativeSetCurrentJSApp(app) {
    currentJSApp = app;
    MXNativeJSFlutterApp.setCurrentJSApp(app);
  }

  static callFlutterReloadApp(app, widgetData) {
    currentJSApp = app;
    MXNativeJSFlutterApp.callFlutterReloadApp(app, widgetData);
  }

  static callFlutterWidgetChannel(method, args) {
    MXNativeJSFlutterApp.callFlutterWidgetChannel(method, args);
  }
}

function invokeFlutterFunction(flutterCallArgs) {
  if (typeof g_platform != "undefined" && g_platform === "android") {
    arguments = { invokeParams: JSON.stringify(flutterCallArgs) };
  } else {
    arguments = JSON.stringify(flutterCallArgs);
  }
  MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("invoke", arguments);
}

//JSFlutter JS Runtime
class MXJSLog {
  static log() {
    if (nativePrint) {
      nativePrint("MXJSFlutter:[JS]-" + arguments[0]);
    } else {
      console.log("MXJSFlutter:[JS]-:");
      console.log(...arguments);
    }
  }

  static error() {
    if (nativePrint) {
      nativePrint("MXJSFlutter:[JS]-[Error]:" + arguments[0]);
    } else {
      console.log("MXJSFlutter:[JS]-[Error]:");
      console.log(...arguments);
    }
  }
}

//全局callbak管理器
class MXJSCallbackMgr {
  constructor() {
    this.callbackIDFeed = 0;
    this.callbackID2fun = {};
  }

  static getInstance() {
    if (!this.instance) {
      this.instance = new MXJSCallbackMgr();
    }

    return this.instance;
  }

  generateID() {
    let d = ++this.callbackIDFeed;
    return String(d);
  }

  createCallbackID(callback) {
    let callbackID = this.generateID();
    this.callbackID2fun[callbackID] = callback;
    return callbackID;
  }

  invokeCallback(callbackID, args) {
    let callback = this.findCallback(callbackID);
    callback(args);
  }

  findCallback(callbackID) {
    return this.callbackID2fun[callbackID];
  }
}

/**
 * @return {String}
 */
function MXCreateCallbackID(callback) {
  return MXJSCallbackMgr.getInstance().createCallbackID(callback);
}

function MXInvokeCallback(callbackID, args) {
  return MXJSCallbackMgr.getInstance().invokeCallback(callbackID, args);
}

class MXJSWidgetMgr {
  constructor() {
    this.widgetIDFeed = 0;
    this.widgetID2WidgetMap = {};
  }

  static getInstance() {
    if (!this.instance) {
      this.instance = new MXJSWidgetMgr();
    }

    return this.instance;
  }

  generateWidgetID() {
    let wID = ++this.widgetIDFeed;
    return String(wID);
  }

  registerWidget(widget) {
    this.widgetID2WidgetMap[widget.widgetID] = widget;
  }

  remove(widgetID) {}

  findWidget(widgetID) {
    return this.widgetID2WidgetMap[widgetID];
  }
}

//MXJSFlutterBuildContext 和flutter BuildContext 保持一致的编程方式
class MXJSFlutterBuildContext {
  constructor(rootWidget) {
    this.rootWidget = rootWidget;
    this.rootWidget.buildContext = this;

    this.inheritedInfo = {};
    this.mediaQueryData = null;
    this.themeData = null;
    this.iconThemeData = null;
  }

  static copyWith(widget, buildContext) {
    var context = new MXJSFlutterBuildContext(widget);
    context.inheritedInfo = buildContext.inheritedInfo;
    context.mediaQueryData = buildContext.mediaQueryData;
    context.themeData = buildContext.themeData;
    context.iconThemeData = buildContext.iconThemeData;
    return context;
  }

  buildRootWidget() {
    return MXJSWidgetHelper.buildWidgetData(this.rootWidget);
  }

  //js->flutter
  callFlutterRebuild(widget, isRootWidget) {
    let widgetData = MXJSWidgetHelper.buildWidgetData(widget);
    //call flutter setState
    MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("rebuild", {
      widgetData,
      isRootWidget
    });
  }

  setInheritedInfo(args) {
    this.inheritedInfo = args;

    this.mediaQueryData = MediaQueryData.fromJson(args["mediaQueryData"]);
    this.themeData = ThemeData.fromJson(args["themeData"]);
    this.iconThemeData = IconThemeData.fromJson(args["iconThemeData"]);
  }
}

//JSFlutterApp 基类，用于和Native交互
class MXJSFlutterApp {
  constructor(name, initialRoute) {
    this.name = name;
    this.initialRoute = initialRoute;
    this.rootWidget = null;
    this.rootBuildContext = null;
    this.disposeBuildContextList = [];
  }

  // run() {
  //   runWithName(this.initialRoute);
  // }

  // //子类重写
  // //flutter->js 用于app直接显示
  // runWithName(name) {
  //   let w = this.createJSWidgetWithName(name);
  //   this.runApp(w);
  // }

  navigatorPushWithName(widgetName, args) {
    let launcher = require("launcher.js");
    let w = launcher.createJSRootWidget(widgetName);

    // 主动调用initState方法
    if (w instanceof MXJSStatefulWidget) {
      w.state.initState();
    }

    this.navigatorPush(w, args);
  }

  //基础
  //创建MXJSWidget，调用build 创建jsonWidgetTree，调用Flutter runApp 重新加载Flutter根页面
  runApp(widget) {
    this.rootWidget = widget;

    this.disposeBuildContext(this.rootBuildContext);
    this.rootBuildContext = new MXJSFlutterBuildContext(this.rootWidget);

    let app = this;
    let widgetData = this.rootBuildContext.buildRootWidget();

    MXNativeJSFlutterAppProxy.callFlutterReloadApp(app, widgetData);
  }

  //基础
  //当Flutter层 PageRoute(builder: (context) =>  被调用时，创建MXJSWidget，build后调用rebuild界面
  navigatorPush(widget, args) {
    this.rootWidget = widget;
    this.disposeBuildContext(this.rootBuildContext);
    this.rootBuildContext = new MXJSFlutterBuildContext(this.rootWidget);
    this.rootBuildContext.setInheritedInfo(args);
    this.rootBuildContext.callFlutterRebuild(this.rootWidget, true);
  }

  disposeBuildContext(buildContext) {
    //this.disposeBuildContextList.add(buildContext);
  }

  //flutter->js channel
  nativeCall(args) {
    MXJSLog.log("MXJSFlutterApp:nativeCall" + args);

    if (typeof g_platform != "undefined" && g_platform === "android") {
      args = args.paramJson;
      MXJSLog.log("DDDDDDDD" + args);
      args = JSON.parse(args);
    }

    let method = args["method"];
    let callArgs = args["arguments"];

    let fun = this[method];

    if (fun != null) {
      return fun.call(this, callArgs);
    } else {
      MXJSLog.log("MXJSFlutterApp:nativeCall error:fun == null" + args);
      return null;
    }
  }

  flutterCallOnEventCallback(args) {
    return this.rootWidget.helper.onEventCallback(args);
  }

  flutterCallNavigatorPushWithName(args) {
    let widgetName = args["widgetName"];

    this.navigatorPushWithName(widgetName, args);
  }

  flutterCallOnBuildEnd(args) {
    this.rootWidget.helper.onBuildEnd(args);
  }

  flutterCallOnDispose(args) {
    let widgetID = args["widgetID"];

    if (this.rootWidget && this.rootWidget.widgetID == widgetID) {
    }

    this.rootWidget.helper.onDispose(args);

    let mirrorObjIDList = args["mirrorObjIDList"];
    FlutterWidgetMirrorMgr.getInstance().removeMirrorObjects(mirrorObjIDList);
  }

  flutterCallOnMirrorObjInvoke(args) {
    var mirrorObjID = args["mirrorID"];
    var functionName = args["functionName"];
    var args = args["args"];
    var mirrorObj = FlutterWidgetMirrorMgr.getInstance().getMirrorObj(
      mirrorObjID
    );
    if (mirrorObj != null) {
      mirrorObj[functionName](args);
    }
  }
}

class MXJSWidgetTree {
  constructor(buildWidgetDataSeq) {
    this.buildWidgetDataSeq = buildWidgetDataSeq;
    this.childrenWidget = {}; //id 2 widget

    this.callbackID2fun = {};
    this.widgetTreeObjMap = null;
  }

  //统一用全局的id生成器
  generateID() {
    return MXJSCallbackMgr.getInstance().generateID();
  }

  createCallbackID(widgetID, callback) {
    let callbackID = widgetID + "/" + this.generateID();
    this.callbackID2fun[callbackID] = callback;
    return callbackID;
  }

  invokeCallback(callbackID, ...args) {
    let callback = this.findCallback(callbackID);
    return callback(...args);
  }

  findCallback(callbackID) {
    return this.callbackID2fun[callbackID];
  }
}

function initMXJSWidgetData(obj) {
  //继承自MXJSBaseWidget 自定义控件，使用Flutter 继承自MXJSBaseWidget 来承载。
  obj.widgetID = MXJSWidgetMgr.getInstance().generateWidgetID();
  obj.helper = new MXJSWidgetHelper(obj);

  //widgetTree
  obj.widgetData = null;
  //构建系列号，每build一次加1
  obj.buildWidgetDataSeq = "";

  // The Widget Pages that pushed this Widget ID
  // 把当前widget（this） push 出来的widget ID
  // 序列化到JSON里
  obj.navPushingWidgetID = "";

  //不添加进json的控制变量
  //创建自己的widget，为null自己是root
  obj.rootWidget = null;

  // The Widget Pages that pushed this Widget
  // 把当前widget（this） push 出来的widget
  obj.navPushingWidget = null;

  //The widget that was pushed by this widget
  //由自己this push的widget page
  obj.navPushedWidgets = {};
  //
  obj.buildContext = null;
  obj.currentWidgetTree = null;
  obj.buildingWidgetTree = null;
  obj.preWidgetTree = null;
  obj.buildWidgetDataSeqFeed = 0;
}

class MXJSWidgetHelper {
  constructor(widget) {
    this.widget = widget;
  }

  setState(fun) {
    this.widget.state.setState(fun);
  }

  //util api
  //building

  static buildWidgetData(rootWidget) {
    let widgetDataStr = JSON.stringify(rootWidget, function(key, value) {
      if (value instanceof MXJSStatefulWidget || value instanceof MXJSStatelessWidget) {
        // 解决widget生成时不调用构造方法的问题
        if (value.helper == null) {
          value.className = value instanceof MXJSStatefulWidget ? "MXJSStatefulWidget" : "MXJSStatelessWidget";
          initMXJSWidgetData(value);
          if (value instanceof MXJSStatefulWidget) {
            value.state = value.createState();
            value.state.widget = value;
          }
        }
        
        if (rootWidget != value) {
          value.buildContext = MXJSFlutterBuildContext.copyWith(value, rootWidget.buildContext);
          if (rootWidget instanceof MXJSStatefulWidget || rootWidget instanceof MXJSStatelessWidget) {
            //Widget 的子Widget 没有层级关系，平铺在rootWidget
            rootWidget.helper.addChildWidget(value);
          }
        }

        //如果是MXJSWidget类需要调用一下build，返回build内容
        return value.helper.buildWidgetTree();
      }

      return value;
    });
    return widgetDataStr;
  }

  buildWidgetTree() {
    this.widget.buildWidgetDataSeq = String(
      ++this.widget.buildWidgetDataSeqFeed
    );
    this.widget.buildingWidgetTree = new MXJSWidgetTree(
      this.widget.buildWidgetDataSeq
    );

    MXJSLog.log(
      "JSWidget buildWidgetTree: buildseq:" + this.widget.buildWidgetDataSeq
    );
    let tempTree;
    if (this.widget instanceof MXJSStatelessWidget) {
      tempTree = this.widget.build(this.widget.buildContext);
    } else if (this.widget instanceof MXJSStatefulWidget) {
      tempTree = this.widget.state.build(this.widget.buildContext);
    }

    this.preBuildJson(tempTree);
    this.widget.buildingWidgetTree.widgetTreeObjMap = tempTree;
    //
    //生成Json用
    this.widget.widgetData = this.widget.buildingWidgetTree.widgetTreeObjMap;

    //json实际包含的字段
    let jsonMap = {
      key: this.widget.key,
      name: this.widget.name,
      className: this.widget.className,
      widgetID: this.widget.widgetID,
      buildWidgetDataSeq: this.widget.buildWidgetDataSeq,
      navPushingWidgetID: this.widget.navPushingWidgetID,
      widgetData: this.widget.widgetData
    };

    return jsonMap;
  }

  preBuildJson(flutterWidget) {
    //MXJSLog.log("preBuildJson:" + flutterWidget);
    if (flutterWidget instanceof Object) {
      if (flutterWidget instanceof FlutterWidget) {
        flutterWidget.preBuild(this, this.widget.buildContext);
      }

      for (let p in flutterWidget) {
        // 无关属性不处理
        if (p == "widgetData" || p == "rootWidget" ||
            p == "navPushedWidgets" || p == "navPushingWidgets" ||
            p == "buildContext" || p == "state" || p == "helper" ||
            p == "currentWidgetTree" || p == "buildingWidgetTree" || 
            p == "preWidgetTree") {
          continue;
        }

        //MXJSStatelessWidge 摊平
        let v = flutterWidget[p];

        if (v instanceof MXJSStatelessWidget) {
          flutterWidget[p] = v.build(this.widget.buildContext);
        }

        this.preBuildJson(flutterWidget[p]);
      }
    }
  }

  createCallbackID(callback) {
    callback = callback.bind(this);
    return this.widget.buildingWidgetTree.createCallbackID(
      this.widget.widgetID,
      callback
    );
  }

  //所有widget用root来管理，来消息时，从rootwidget开始查找
  addChildWidget(jsWidget) {
    jsWidget.rootWidget = this.widget;
    this.widget.buildingWidgetTree.childrenWidget[jsWidget.widgetID] = jsWidget;
  }

  removeChildWidget(jsWidget) {
    if (
      this.widget.currentWidgetTree &&
      this.widget.currentWidgetTree.childrenWidget
    ) {
      delete this.widget.currentWidgetTree.childrenWidget[jsWidget.widgetID];
    }
  }

  //flutter -> js
  onEventCallback(args) {
    let callID = args["callID"]; //   widgetID/callID 格式 ： "1313/3434"
    if (callID == null) {
      return;
    }
    let arr = callID.split("/");

    let widgetID = arr[0];

    let buildWidgetDataSeq = args["buildSeq"];
    let callArgs = args["args"];

    let jsWidget = this.findWidgetWithWidgetID(widgetID);

    if (jsWidget != null) {
      return jsWidget.helper.invokeCallback(buildWidgetDataSeq, callID, args["args"]);
    } else {
      MXJSLog.error(
        "onEventCallback error: jsWidget == null onEventCallback(args:" + args
      );
    }
  }

  findWidgetWithWidgetID(widgetID) {
    if (this.widget.widgetID == widgetID) {
      return this.widget;
    }

    let widgetTree = this.widget.currentWidgetTree;
    if (widgetTree != null) {
      let w = widgetTree.childrenWidget[widgetID];
      if (w) {
        return w;
      }

      for (let k in widgetTree.childrenWidget) {
        let jsWidget = widgetTree.childrenWidget[k];
        w = jsWidget.helper.findWidgetWithWidgetID(widgetID);
        if (w) {
          return w;
        }
      }
    }

    //查找被自己push的widgets
    for (let k in this.widget.navPushedWidgets) {
      let jsWidget = this.widget.navPushedWidgets[k];
      let w = jsWidget.helper.findWidgetWithWidgetID(widgetID);
      if (w) {
        return w;
      }
    }

    return null;
  }

  invokeCallback(buildWidgetDataSeq, callID, args) {
    if (
      this.widget.currentWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq
    ) {
      MXJSLog.error(
        "MXJSWidget:invokeCallback:this.widget.currentWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq :buildSeq:" +
          buildWidgetDataSeq +
          "callID:" +
          callID
      );

      if (this.widget.preWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq) {
        MXJSLog.error(
          "MXJSWidget:invokeCallback:this.widget.preWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq :buildSeq:" +
            buildWidgetDataSeq +
            "callID:" +
            callID
        );
      } else {
        MXJSLog.error(
          "MXJSWidget:invokeCallback:this.widget.preWidgetTree.buildWidgetDataSeq == buildWidgetDataSeq :buildSeq:" +
            buildWidgetDataSeq +
            "callID:" +
            callID
        );
      }

      return null;
    }

    return this.widget.currentWidgetTree.invokeCallback(callID, args);
  }

  onBuildEnd(args) {
    let widgetID = args["widgetID"];
    let buildWidgetDataSeq = args["buildSeq"];
    let jsWidget = this.findWidgetWithWidgetID(widgetID);

    if (jsWidget != null) {
      jsWidget.helper.onFlutterBuildEnd(buildWidgetDataSeq);
    } else {
      // MXJSLog.error("onBuildEnd error: jsWidget == null widgetID " + widgetID);

      // 如果已从parentWidget移除了，再重新rebuild一下rootWidget
      let rootWidgetID = args["rootWidgetID"];
      let rootJsWidget = this.findWidgetWithWidgetID(rootWidgetID);
      if (rootJsWidget != null) {
        rootJsWidget.buildContext.callFlutterRebuild(rootJsWidget);
      }
    }
  }

  onFlutterBuildEnd(buildWidgetDataSeq) {
    MXJSLog.log("OnFlutterBuildEnd:buildWidgetDataSeq" + buildWidgetDataSeq);

    if (
      buildWidgetDataSeq == this.widget.buildingWidgetTree.buildWidgetDataSeq
    ) {
      this.widget.preWidgetTree = this.widget.currentWidgetTree;
      this.widget.currentWidgetTree = this.widget.buildingWidgetTree;
    } else {
      MXJSLog.error(
        "OnFlutterBuildEnd:buildWidgetDataSeq" + buildWidgetDataSeq
      );
    }
  }

  onDispose(args) {
    let widgetID = args["widgetID"];

    let jsWidget = this.findWidgetWithWidgetID(widgetID);

    if (jsWidget != null) {
      jsWidget.helper.onFlutterDispose();

      if (jsWidget.rootWidget) {
        jsWidget.rootWidget.helper.removeChildWidget(jsWidget);
      }

      if (jsWidget.navPushingWidget) {
        jsWidget.navPushingWidget.helper.removePushingWidget(jsWidget);
      }
    } else {
      MXJSLog.error("onDispose error: jsWidget == null widgetID " + widgetID);
    }
  }

  onFlutterDispose() {
    MXJSLog.log("onFlutterDispose: widgetID:" + this.widget.widgetID);
    //调用子widget disposeWidget
    if (
      this.widget.currentWidgetTree &&
      this.widget.currentWidgetTree.childrenWidget
    ) {
      for (let k in this.widget.currentWidgetTree.childrenWidget) {
        let widget = this.widget.currentWidgetTree.childrenWidget[k];
        if (widget) {
          widget.helper.onFlutterDispose();
        }
        // this.widget.currentWidgetTree.childrenWidget[k].disposeWidget();
      }
    }

    if (this.widget instanceof MXJSStatefulWidget) {
      this.widget.state.dispose();
    }
  }

  //js->flutter
  //navigator route
  navigatorPush(jsWidget) {
    // 清空当前widget的navPushedWidgets数据
    for (let i in this.widget.navPushedWidgets) {
      var obj = this.widget.navPushedWidgets[i];
      obj.helper.onFlutterDispose();

      if (obj.rootWidget) {
        obj.rootWidget.helper.removeChildWidget(obj);
      }

      if (obj.navPushingWidget) {
        obj.navPushingWidget.helper.removePushingWidget(obj);
      }
    } 

    // 主动调用initState方法
    if (jsWidget instanceof MXJSStatefulWidget) {
      jsWidget.state.initState();
    }

    let widgetData = this.updatePushingWidgetsData(jsWidget);

    //call flutter setState
    MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("navigatorPush", {
      widgetData
    });
  }

  navigatorPop() {
    // // 重置context的currentWidget
    // if (this.widget.navPushingWidget == null) {
    //   MXJSLog.log("navigatorPop error, navPushingWidget is null");
    //   return;
    // }
    // this.widget.buildContext.currentWidget = this.widget.navPushingWidget;

    // 找到最上层的top widget
    let topRootWidget = this.findTopRootWidget();
    let widgetID = topRootWidget.widgetID;
    MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("navigatorPop", {
      widgetID
    });

    if (this.widget.navPushedWidgets) {
      delete this.widget.navPushedWidgets[widgetID];
    }
  }

  removePushingWidget(jsWidget) {
    if (this.widget.navPushedWidgets) {
      delete this.widget.navPushedWidgets[jsWidget.widgetID];
    }
  }

  updatePushingWidgetsData(jsWidget) {

    //那种根节点不是statewidget的页面 比如Theme
    var newJSWidget;
    if (jsWidget.className != "MXJSStatefulWidget" && jsWidget.className != "MXJSStatelessWidget") {
      // 特殊处理，用MXJSStatelessWidget包裹一层
      newJSWidget= new MXJSStatelessWidget("FakeStatelessWidget");
      newJSWidget.build = function(context) {
        return jsWidget;
      };
    } else {
      newJSWidget = jsWidget;
    }

    //设置push jsWidget的widget
    newJSWidget.navPushingWidget = this.widget;
    newJSWidget.buildContext = MXJSFlutterBuildContext.copyWith(newJSWidget, this.widget.buildContext);
    newJSWidget.navPushingWidgetID = this.widget.widgetID;
    this.widget.navPushedWidgets[newJSWidget.widgetID] = newJSWidget;
    newJSWidget.widgetData = MXJSWidgetHelper.buildWidgetData(newJSWidget);
    
    return newJSWidget.widgetData;
  }

  findTopRootWidget() {
    let rootWidget = this.widget.rootWidget;
    if (rootWidget == null) {
      return this.widget;
    }

    return rootWidget.helper.findTopRootWidget(rootWidget);
  }
}

class MXJSBaseWidget extends core.Object {
  constructor(name, { key } = {}) {
    super();

    this.name = name;
    this.key = key;

    initMXJSWidgetData(this);
  }
}

class MXJSStatefulWidget extends MXJSBaseWidget {
  constructor(name, { key } = {}) {
    super(name, {key: key});

    this.className = "MXJSStatefulWidget";
    this.state = this.createState();
    this.state.widget = this;
  }

  createState() {}
}

(MXJSStatefulWidget.new = function({ key } = {}) {
  this.name = this.title;
  this.key = key;
  this.className = "MXJSStatefulWidget";

  initMXJSWidgetData(this);

  this.state = this.createState();
  this.state.widget = this;
}).prototype = MXJSStatefulWidget.prototype;
// MXJSStatefulWidget.new = MXJSStatefulWidget.constructor;

class MXJSWidgetState {
  constructor() {}

  get context() {
    return this.widget.buildContext;
  }

  //子类重载
  initState() {}

  setState(fun) {
    if (fun) {
      fun = fun.bind(this);
      fun();
    }

    //call-> Flutter
    this.widget.buildContext.callFlutterRebuild(this.widget);
  }

  //子类重载
  build(buildContext) {
    return null;
  }

  //子类重载
  dispose() {}
}

(MXJSWidgetState.new = function() {}).prototype = MXJSWidgetState.prototype;

//在JS层，要封装控件，如不需要改变UI内容，使用无状态的MXJSStatelessWidget
//在JS Build JSON 阶段会预先展开为Build返回的内容
//在flutter层没有与之相对应的Widget，避免了MXJSBaseWidget 为支持状态变化背后如事件，刷新等一系列的支持类。节省内存和执行效率。

class MXJSStatelessWidget extends MXJSBaseWidget {
  constructor(name, { key } = {}) {
    super(name, {key: key});

    this.className = "MXJSStatelessWidget";
  }

  //子类重载
  build(buildContext) {
    return null;
  }
}

(MXJSStatelessWidget.new = function({ key } = {}) {
  this.name = this.title;
  this.key = key;
  this.className = "MXJSStatelessWidget";

  initMXJSWidgetData(this);
}).prototype = MXJSStatelessWidget.prototype;

//逻辑
class MediaQuery extends DartClass {
  constructor({
    key,
    data, //MediaQueryData
    child
  } = {}) {
    super();

    this.key = key;
    this.data = data; //MediaQueryData
    this.child = child;
  }

  static of(context) {
    return context.mediaQueryData;
  }
}

MediaQuery.new = function(arg) {
  return new MediaQuery(arg);
};

class MediaQueryData extends DartClass {
  constructor({
    size,
    devicePixelRatio,
    textScaleFactor,
    padding,
    viewInsets,
    alwaysUse24HourFormat,
    accessibleNavigation,
    invertColors,
    disableAnimations,
    boldText
  } = {}) {
    super();

    this.size = size;
    this.devicePixelRatio = devicePixelRatio;
    this.textScaleFactor = textScaleFactor;
    this.padding = padding;
    this.viewInsets = viewInsets;
    this.alwaysUse24HourFormat = alwaysUse24HourFormat;
    this.accessibleNavigation = accessibleNavigation;
    this.invertColors = invertColors;
    this.disableAnimations = disableAnimations;
    this.boldText = boldText;
  }

  static fromJson(mapObj) {
    if (mapObj == null || mapObj == undefined) {
      return null;
    }
    let obj = new MediaQueryData();

    for (var p in mapObj) {
      if (mapObj.hasOwnProperty(p)) {
        let v = mapObj[p];
        switch (p) {
          case "size":
            obj[p] = Size.fromJson(v);
            break;
          case "padding":
          case "viewInsets":
            obj[p] = EdgeInsets.fromJson(v);
            break;
          default:
            obj[p] = v;
        }
      }
    }

    return obj;
  }
}

MediaQueryData.new = function(arg) {
  return new MediaQueryData(arg);
};

class Theme extends DartClass {
  constructor({ key, data, isMaterialAppTheme, child } = {}) {
    super();

    this.key = key;
    this.data = data;
    this.isMaterialAppTheme = isMaterialAppTheme;
    this.child = child;
  }

  static of(context) {
    return context.themeData;
  }
}

Theme.new = function(arg) {
  return new Theme(arg);
};

class ThemeData extends DartClass {
  constructor ({
    brightness,
    primarySwatch,
    primaryColor,
    primaryColorBrightness,
    primaryColorLight,
    primaryColorDark,
    accentColor,
    accentColorBrightness,
    canvasColor,
    scaffoldBackgroundColor,
    bottomAppBarColor,
    cardColor,
    dividerColor,
    focusColor,
    hoverColor,
    highlightColor,
    splashColor,
    splashFactory,
    selectedRowColor,
    unselectedWidgetColor,
    disabledColor,
    buttonColor,
    buttonTheme,
    toggleButtonsTheme,
    secondaryHeaderColor,
    textSelectionColor,
    cursorColor,
    textSelectionHandleColor,
    backgroundColor,
    dialogBackgroundColor,
    indicatorColor,
    hintColor,
    errorColor,
    toggleableActiveColor,
    fontFamily,
    textTheme,
    primaryTextTheme,
    accentTextTheme,
    inputDecorationTheme,
    iconTheme,
    primaryIconTheme,
    accentIconTheme,
    sliderTheme,
    tabBarTheme,
    tooltipTheme,
    cardTheme,
    chipTheme,
    platform,
    materialTapTargetSize,
    applyElevationOverlayColor,
    pageTransitionsTheme,
    appBarTheme,
    bottomAppBarTheme,
    colorScheme,
    dialogTheme,
    floatingActionButtonTheme,
    typography,
    cupertinoOverrideTheme,
    snackBarTheme,
    bottomSheetTheme,
    popupMenuTheme,
    bannerTheme,
    dividerTheme,
    buttonBarTheme,
  } = {}) {
    super();

    // TODO: 其他参数默认的取值
    this.brightness = brightness;
    var isDark = brightness == Brightness.dark;
    this.primarySwatch = primarySwatch != null ? primarySwatch : Colors.blue;
    this.primaryColor =  primaryColor != null ? primaryColor : (isDark ? Colors.grey[900] : primarySwatch);
    this.primaryColorBrightness = primaryColorBrightness;
    this.primaryColorLight = primaryColorLight;
    this.primaryColorDark = primaryColorDark;
    this.accentColor = accentColor;
    this.accentColorBrightness = accentColorBrightness;
    this.canvasColor = canvasColor;
    this.scaffoldBackgroundColor = scaffoldBackgroundColor;
    this.bottomAppBarColor = bottomAppBarColor;
    this.cardColor = cardColor;
    this.dividerColor = dividerColor;
    this.focusColor = focusColor;
    this.hoverColor = hoverColor;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.splashFactory = splashFactory;
    this.selectedRowColor = selectedRowColor;
    this.unselectedWidgetColor = unselectedWidgetColor;
    this.disabledColor = disabledColor;
    this.buttonColor = buttonColor;
    this.toggleButtonsTheme = toggleButtonsTheme;
    this.secondaryHeaderColor = secondaryHeaderColor;
    this.textSelectionColor = textSelectionColor;
    this.cursorColor = cursorColor;
    this.textSelectionHandleColor = textSelectionHandleColor;
    this.backgroundColor = backgroundColor;
    this.dialogBackgroundColor = dialogBackgroundColor;
    this.indicatorColor = indicatorColor;
    this.hintColor = hintColor;
    this.errorColor = errorColor;
    this.toggleableActiveColor = toggleableActiveColor;
    this.fontFamily = fontFamily;
    this.textTheme = textTheme;
    this.primaryTextTheme = primaryTextTheme;
    this.accentTextTheme = accentTextTheme;
    this.inputDecorationTheme = inputDecorationTheme;
    this.iconTheme = iconTheme;
    this.primaryIconTheme = primaryIconTheme;
    this.accentIconTheme = accentIconTheme;
    this.sliderTheme = sliderTheme;
    this.tabBarTheme = tabBarTheme;
    this.tooltipTheme = tooltipTheme;
    this.cardTheme = cardTheme;
    this.chipTheme = chipTheme;
    this.platform = platform;
    this.materialTapTargetSize = materialTapTargetSize;
    this.applyElevationOverlayColor = applyElevationOverlayColor;
    this.pageTransitionsTheme = pageTransitionsTheme;
    this.appBarTheme = appBarTheme;
    this.bottomAppBarTheme = bottomAppBarTheme;
    this.colorScheme = colorScheme != null ? colorScheme : ColorScheme.fromSwatch({
      primarySwatch: primarySwatch,
      primaryColorDark: primaryColorDark,
      accentColor: accentColor,
      cardColor: cardColor,
      backgroundColor: backgroundColor,
      errorColor: errorColor,
      brightness: brightness
    });
    this.buttonTheme = buttonTheme != null ? buttonTheme : new ButtonThemeData({
      colorScheme: this.colorScheme,
      buttonColor: buttonColor,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      materialTapTargetSize: materialTapTargetSize,
    });
    this.dialogTheme = dialogTheme;
    this.floatingActionButtonTheme = floatingActionButtonTheme;
    this.typography = typography;
    this.cupertinoOverrideTheme = cupertinoOverrideTheme;
    this.snackBarTheme = snackBarTheme;
    this.bottomSheetTheme = bottomSheetTheme;
    this.popupMenuTheme = popupMenuTheme;
    this.bannerTheme = bannerTheme;
    this.dividerTheme = dividerTheme;
    this.buttonBarTheme = buttonBarTheme;
  }

  copyWith({
    brightness,
    primaryColor,
    primaryColorBrightness,
    primaryColorLight,
    primaryColorDark,
    accentColor,
    accentColorBrightness,
    canvasColor,
    scaffoldBackgroundColor,
    bottomAppBarColor,
    cardColor,
    dividerColor,
    focusColor,
    hoverColor,
    highlightColor,
    splashColor,
    splashFactory,
    selectedRowColor,
    unselectedWidgetColor,
    disabledColor,
    buttonTheme,
    toggleButtonsTheme,
    buttonColor,
    secondaryHeaderColor,
    textSelectionColor,
    cursorColor,
    textSelectionHandleColor,
    backgroundColor,
    dialogBackgroundColor,
    indicatorColor,
    hintColor,
    errorColor,
    toggleableActiveColor,
    textTheme,
    primaryTextTheme,
    accentTextTheme,
    inputDecorationTheme,
    iconTheme,
    primaryIconTheme,
    accentIconTheme,
    sliderTheme,
    tabBarTheme,
    tooltipTheme,
    cardTheme,
    chipTheme,
    platform,
    materialTapTargetSize,
    applyElevationOverlayColor,
    pageTransitionsTheme,
    appBarTheme,
    bottomAppBarTheme,
    colorScheme,
    dialogTheme,
    floatingActionButtonTheme,
    typography,
    cupertinoOverrideTheme,
    snackBarTheme,
    bottomSheetTheme,
    popupMenuTheme,
    bannerTheme,
    dividerTheme,
    buttonBarTheme,
  } = {}) {
    let obj = new ThemeData({
      brightness : (brightness != null ? brightness : this.brightness),
      primarySwatch : this.primarySwatch,
      primaryColor : (primaryColor != null ? primaryColor : this.primaryColor), 
      primaryColorBrightness : (primaryColorBrightness != null ? primaryColorBrightness : this.primaryColorBrightness),
      primaryColorLight : (primaryColorLight != null ? primaryColorLight : this.primaryColorLight),
      primaryColorDark : (primaryColorDark != null ? primaryColorDark : this.primaryColorDark),
      accentColor : (accentColor != null ? accentColor : this.accentColor),
      accentColorBrightness : (accentColorBrightness != null ? accentColorBrightness : this.accentColorBrightness),
      canvasColor : (canvasColor != null ? canvasColor : this.canvasColor),
      scaffoldBackgroundColor : (scaffoldBackgroundColor != null ? scaffoldBackgroundColor : this.scaffoldBackgroundColor),
      bottomAppBarColor : (bottomAppBarColor != null ? bottomAppBarColor : this.bottomAppBarColor),
      cardColor : (cardColor != null ? cardColor : this.cardColor),
      dividerColor : (dividerColor != null ? dividerColor : this.dividerColor),
      focusColor : (focusColor != null ? focusColor : this.focusColor),
      hoverColor : (hoverColor != null ? hoverColor : this.hoverColor),
      highlightColor : (highlightColor != null ? highlightColor : this.highlightColor),
      splashColor : (splashColor != null ? splashColor : this.splashColor),
      splashFactory : (splashFactory != null ? splashFactory : this.splashFactory),
      selectedRowColor : (selectedRowColor != null ? selectedRowColor : this.selectedRowColor),
      unselectedWidgetColor : (unselectedWidgetColor != null ? unselectedWidgetColor : this.unselectedWidgetColor),
      disabledColor : (disabledColor != null ? disabledColor : this.disabledColor),
      buttonColor : (buttonColor != null ? buttonColor : this.buttonColor),
      buttonTheme : (buttonTheme != null ? buttonTheme : this.buttonTheme),
      toggleButtonsTheme: (toggleButtonsTheme != null ? toggleButtonsTheme : this.toggleButtonsTheme),
      secondaryHeaderColor : (secondaryHeaderColor != null ? secondaryHeaderColor : this.secondaryHeaderColor),
      textSelectionColor : (textSelectionColor != null ? textSelectionColor : this.textSelectionColor),
      cursorColor : (cursorColor != null ? cursorColor : this.cursorColor),
      textSelectionHandleColor : (textSelectionHandleColor != null ? textSelectionHandleColor : this.textSelectionHandleColor),
      backgroundColor : (backgroundColor != null ? backgroundColor : this.backgroundColor),
      dialogBackgroundColor : (dialogBackgroundColor != null ? dialogBackgroundColor : this.dialogBackgroundColor),
      indicatorColor : (indicatorColor != null ? indicatorColor : this.indicatorColor),
      hintColor : (hintColor != null ? hintColor : this.hintColor),
      errorColor : (errorColor != null ? errorColor : this.errorColor),
      toggleableActiveColor : (toggleableActiveColor != null ? toggleableActiveColor : this.toggleableActiveColor),
      textTheme : (textTheme != null ? textTheme : this.textTheme),
      primaryTextTheme : (primaryTextTheme != null ? primaryTextTheme : this.primaryTextTheme),
      accentTextTheme : (accentTextTheme != null ? accentTextTheme : this.accentTextTheme),
      inputDecorationTheme : (inputDecorationTheme != null ? inputDecorationTheme : this.inputDecorationTheme),
      iconTheme : (iconTheme != null ? iconTheme : this.iconTheme),
      primaryIconTheme : (primaryIconTheme != null ? primaryIconTheme : this.primaryIconTheme),
      accentIconTheme : (accentIconTheme != null ? accentIconTheme : this.accentIconTheme),
      sliderTheme : (sliderTheme != null ? sliderTheme : this.sliderTheme),
      tabBarTheme : (tabBarTheme != null ? tabBarTheme : this.tabBarTheme),
      tooltipTheme : (tooltipTheme != null ? tooltipTheme : this.tooltipTheme),
      cardTheme : (cardTheme != null ? cardTheme : this.cardTheme),
      chipTheme : (chipTheme != null ? chipTheme : this.chipTheme),
      platform : (platform != null ? platform : this.platform),
      materialTapTargetSize : (materialTapTargetSize != null ? materialTapTargetSize : this.materialTapTargetSize),
      applyElevationOverlayColor : (applyElevationOverlayColor != null ? applyElevationOverlayColor : this.applyElevationOverlayColor),
      pageTransitionsTheme : (pageTransitionsTheme != null ? pageTransitionsTheme : this.pageTransitionsTheme),
      appBarTheme : (appBarTheme != null ? appBarTheme : this.appBarTheme),
      bottomAppBarTheme : (bottomAppBarTheme != null ? bottomAppBarTheme : this.bottomAppBarTheme),
      colorScheme : (colorScheme != null ? colorScheme : this.colorScheme),
      dialogTheme : (dialogTheme != null ? dialogTheme : this.dialogTheme),
      floatingActionButtonTheme : (floatingActionButtonTheme != null ? floatingActionButtonTheme : this.floatingActionButtonTheme),
      typography : (typography != null ? typography : this.typography),
      cupertinoOverrideTheme : (cupertinoOverrideTheme != null ? cupertinoOverrideTheme : this.cupertinoOverrideTheme),
      snackBarTheme : (snackBarTheme != null ? snackBarTheme : this.snackBarTheme),
      bottomSheetTheme : (bottomSheetTheme != null ? bottomSheetTheme : this.bottomSheetTheme),
      popupMenuTheme : (popupMenuTheme != null ? popupMenuTheme : this.popupMenuTheme),
      bannerTheme : (bannerTheme != null ? bannerTheme : this.bannerTheme),
      dividerTheme : (dividerTheme != null ? dividerTheme : this.dividerTheme),
      buttonBarTheme : (buttonBarTheme != null ? buttonBarTheme : this.buttonBarTheme),
    });
    return obj;
  }
}

ThemeData.new = function(arg) {
  return new ThemeData(arg);
};

ThemeData.light = function() {
  return new ThemeData({brightness:Brightness.light});
};

ThemeData.dark = function() {
  return new ThemeData({brightness: Brightness.dark});
};

//TODO
ThemeData.fromJson = function(mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new ThemeData();

  for (var p in mapObj) {
    if (mapObj.hasOwnProperty(p)) {
      let v = mapObj[p];
      switch (p) {
        case "primaryColor":
        case "primaryColorLight":
        case "primaryColorDark":
        case "accentColor":
        case "canvasColor":
        case "scaffoldBackgroundColor":
        case "bottomAppBarColor":
        case "cardColor":
        case "dividerColor":
        case "highlightColor":
        case "splashColor":
        case "selectedRowColor":
        case "unselectedWidgetColor":
        case "disabledColor":
        case "buttonColor":
        case "secondaryHeaderColor":
        case "textSelectionColor":
        case "cursorColor":
        case "textSelectionHandleColor":
        case "backgroundColor":
        case "dialogBackgroundColor":
        case "indicatorColor":
        case "hintColor":
        case "errorColor":
        case "toggleableActiveColor":
          obj[p] = new Color(v);
          break;

        case "textTheme":
        case "primaryTextTheme":
        case "accentTextTheme":
          obj[p] = TextTheme.fromJson(v);
          break;

        default:
          obj[p] = v;
          break;
      }
    }
  }

  return obj;
};

class GlobalKey extends DartClass {
  constructor({ debugLabel } = {}) {
    super();

    this.debugLabel = debugLabel;
  }
}

GlobalKey.new = function(arg) {
  return new GlobalKey(arg);
};

module.exports = {
  runApp,
  invokeFlutterFunction,
  //class 定义
  MXNativeJSFlutterAppProxy,
  MXJSLog,
  MXJSCallbackMgr,
  MXCreateCallbackID,
  MXInvokeCallback,
  MXJSFlutterApp,
  MXJSWidgetState,
  MediaQuery,
  MediaQueryData,
  Theme,
  ThemeData,
  MXJSStatelessWidget,
  MXJSStatefulWidget,
  GlobalKey
};
