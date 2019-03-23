//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//真是为了JS菜鸟就是我 操碎了心
//如果不能运行，核对下js_ide_node_run_support.js文件中jsFlutterLibDir 相对路径
//新建文件拷贝这个头
let g_isNativeEnvironment = typeof JSAPI_require != "undefined" ? true : false;
function jsFlutterRequire(file) {
  if (!g_isNativeEnvironment) {
    console.log("[JS]-MXJSFlutter:: jsFlutterRequire", ...arguments);
    let { calcJSFrameworkFilePath } = require("./js_ide_node_run_support.js");
    return require(calcJSFrameworkFilePath(file));
  }
    return mxRequire(file);
}
//VSCode Run support end ================================================================================

//hot.js 正式开始，😝

let {
    runApp,
    MXJSFlutterApp,
    MXJSWidget,
    MaterialApp,
    ThemeData,
    Scaffold,
    AppBar,
    Container,
    Row,
    FlatButton,
    Text,
    Expanded,
    TextStyle,
    Colors,
    AspectRatio,
    BoxDecoration,
    BorderSide,
    DecorationImage,
    NetworkImage,
    Rect,
    Border,
    BorderRadius,
    Radius,
    Color,
    TextField,
    Theme,
    Icon,
    IconData,
    BorderDirectional,
    EdgeInsets,
    Column,
    FontWeight,
    PopupMenuButton,
    PopupMenuItem,
    SingleChildScrollView,
    InputDecoration,
    SizedBox,
    Card,
    CrossAxisAlignment,
    MainAxisAlignment,
    Align,
    Center,
    Image,
    Alignment,
    CircleAvatar,
    DefaultTabController,
    NestedScrollView,
    SliverOverlapAbsorber,
    SliverAppBar,
    TabBar,
    Tab,
    TabBarView,
    SafeArea,
    Builder,
    CustomScrollView,
    SliverChildBuilderDelegate,
    SliverOverlapInjector,
    SliverPadding,
    SliverFixedExtentList,
    Padding,
} = jsFlutterRequire("js_flutter_ui.js");

let {GlobalConfig} = jsFlutterRequire("./zhihu/global_config.js");
let {questionList} = jsFlutterRequire("./zhihu/home/question.js");

class Hot extends MXJSWidget {
    constructor(){
        super("Hot constructor");
    }

    hotCard(question){
        return new Container({
            decoration: new BoxDecoration({
                color: GlobalConfig.cardBackgroundColor,
                border: new BorderDirectional({
                    bottom: new BorderSide({
                        color: Colors.black(),
                        width: 1.0,
                    }),
                }),
            }),
            child: new FlatButton({
                onPressed:function(){
                    this.navigatorPush(new QuestionPage);
                },
                child: new Container({
                    padding: EdgeInsets.only({top: 8.0, bottom: 8.0}),
                    child: new Row({
                        children: [
                            new Expanded({
                                flex: 1,
                                child: new Column({
                                    children: [
                                        new Container({
                                            child: new Text(
                                                question.order,{
                                                style: new TextStyle({
                                                    color: question.order <= "03" ? Colors.red() : Colors.yellow(),
                                                    fontSize: 18.0
                                                }),
                                            }),
                                            alignment: Alignment.topLeft,
                                        }),
                                        question.rise != null ? 
                                        new Row({
                                            children: [
                                                new Icon(new IconData(0xe5d8, {fontFamily: 'MaterialIcons'}),{
                                                    color: Colors.red(), 
                                                    size: 10.0
                                                }),
                                                new Text(question.rise, {
                                                    style: new TextStyle({
                                                        color: Colors.red(), 
                                                        fontSize: 10.0
                                                    }),
                                                })
                                            ],
                                        })
                                        : new Container(), 
                                    ],
                                }),
                            }),
                            new Expanded({
                                flex: 6,
                                child: new Column({
                                    children: [
                                        new Container({
                                            child: new Text(question.title,{
                                                style: new TextStyle({
                                                    fontWeight: FontWeight.bold, 
                                                    fontSize: 16.0, 
                                                    height: 1.1, 
                                                    color: Colors.black()
                                                }),
                                            }),
                                            padding: EdgeInsets.only({bottom: 10.0,right: 4.0}),
                                            alignment: Alignment.topLeft,
                                        }),
                                        question.mark != null ?
                                        new Container({
                                            child: new Text(question.mark, {
                                                style: new TextStyle({color: GlobalConfig.fontColor}),
                                            }),
                                            alignment: Alignment.topLeft,
                                            padding: EdgeInsets.only({bottom: 8.0,right: 4.0}),
                                        }) : 
                                        new Container(),
                                        new Container({
                                            child: new Text(question.hotNum, {
                                                style: new TextStyle({color: GlobalConfig.fontColor}),
                                            }),
                                            alignment: Alignment.topLeft,
                                        }),
                                    ],
                                }),
                            }),
                            new Expanded({
                                flex: 3,
                                child: new AspectRatio({
                                    aspectRatio: 3.0 / 2.0,
                                    child: new Container({
                                        foregroundDecoration:new BoxDecoration({
                                            image: new DecorationImage({
                                                image: new NetworkImage(question.imgUrl),
                                                centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                            }),
                                            borderRadius: BorderRadius.all(Radius.circular(6.0)),
                                        }),
                                    }),
                                }),
                            }),
                        ],
                    })
                })
            })
        })
    }

    build(context){
        let widget = new SingleChildScrollView({
            child: new Container({
                margin: EdgeInsets.only({top: 5.0}),
                child: new Column({
                    children: [
                        new Container({
                            margin: EdgeInsets.only({top: 5.0}),
                        }),
                        this.hotCard(questionList[0]),
                        this.hotCard(questionList[1]),
                        this.hotCard(questionList[2]),
                        this.hotCard(questionList[3]),
                        this.hotCard(questionList[4]),
                    ],
                }),
            })
        });
        return widget;
    }
}

module.exports = { Hot };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(Hot);

//拷贝一份到目标文件
function IDERunFileTestWidget(TestPage) {
    if (g_isNativeEnvironment) {
        return;
    }
    class AppTest extends MXJSFlutterApp {
        constructor() {
            super("app_test", "initRouteName");
        }

        //子类重写
        //flutter->js 用于路由跳转
        //return MXJSWidget subclass
        createJSWidgetWithName(pageName) {
            let w = new TestPage;
            return w;
        }
    }

    let app = new AppTest;
    runApp(app);

    app.runWithPageName();
};