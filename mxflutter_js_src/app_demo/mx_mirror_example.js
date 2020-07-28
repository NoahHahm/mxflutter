//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.


let {
    MXJSLog,
    runApp,
    MXJSFlutterApp,
    MXJSWidgetState,
    MXJSStatefulWidget,
    MXJSStatelessWidget,
    MaterialApp,
    Scaffold,
    Container,
    ListTile,
    Center,
    Color,
    AppBar,
    SnackBar,
    Text,
    Icon,
    IconData,
    EdgeInsets,
    Colors,
    IconButton,
    FlatButton,
    RaisedButton,
    FloatingActionButton,
    Column,
    Row,
    DropdownButton,
    DropdownMenuItem,
    MainAxisAlignment,
    TextStyle,
    PopupMenuButton,
    PopupMenuItem,
    ButtonBar,
    MainAxisSize,
    TextDecoration,
    RichText,
    TextSpan,
    Expanded,
    FontWeight,
    TextFormField,
    InputDecoration,
    UnderlineInputBorder,
    TextInputType,
    SizedBox,
    TextField,
    TextEditingController,
    ListView,
    Slider,
    TextDecorationStyle,
    TextOverflow,
    Padding,
    Icons,
    MethodChannel,
    Image
  } = require("js_flutter.js");

let { DartClass, FlutterCallArgs, FlutterWidget, MXEncodeParam } = require("./js_flutter_basic_types.js");
let { MXFJSBridge, MXJSCallbackMgr } = require("./js_flutter_framework.js");



class MXMirrorExample extends DartClass {

    constructor(baseOptions) {
        super("MXMirrorExample");
        //Mirror对象在构造函数创建 MirrorID
        this.createMirrorObjectID();

        //创建对应FLutter对象
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: "MXMirrorExample",
            args: {
                "key": 123
            }
        });

        MXFJSBridge.createMirrorObj(argument, this.mirrorID, this);
    }

    //封装getMyAppName
    getMyAppName(platform, { v } = {}) {

        let argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: "MXMirrorExample",
            funcName: "getMyAppName",
            args: {
                platform: platform,
                v: v,
            }
        });

       return this.invokeMirrorObjWithCallback(argument);
    }

    invokeMirrorObjWithCallback(argument){
        let promiseResult = new Promise(function (resolve, reject) {
            MXFJSBridge.invokeMirrorObjWithCallback(argument, function (value) {
                if (value != null) {
                    resolve(value);

                } else {
                    resolve(null);
                }

            });
        }.bind(this));

        return promiseResult;
    }

}


//使用MXMirrorExample
let g_MXMirror = new MXMirrorExample();

const { SectionTitle } = require("./component/section_title.js");

class PageExampleMXMirror extends MXJSStatefulWidget {
    constructor() {
        super("PageExampleMXMirror");

    }

    createState() {
        return new PageExampleMXMirrorState(this);
    }
}

class PageExampleMXMirrorState extends MXJSWidgetState {
    constructor() {
        super("PageExampleMXMirrorState");
        this.response = "点击小人Run上面的代码";
    }

    codeText() {
        return "let result = await this.MXMirror.getMyAppName('iOS', {v:'1.0'})";
    }

    build(context) {
        let widget = new Scaffold({
            appBar: new AppBar({
                title: new Text("MXMirror Example"),
            }),
            body: new ListView({
                children: [
                    new SectionTitle("Code 调用Dart MXMirror.getMyAppName"),
                    new ListTile({
                        trailing: new Icon(Icons["directions_run"]),
                        title: new Text(this.codeText(), {
                            style: new TextStyle({
                                color: Colors.gray,
                            })
                        }),
                        onTap: async function () {

                            //call js api
                            let result = await g_MXMirror.getMyAppName("iOS", { v: "1.0" });

                            this.setState(function () {

                                this.response = result;

                            }.bind(this));

                        }.bind(this)
                    }),
                    new SectionTitle("MXMirror Result"),

                    new Padding({
                        padding: EdgeInsets.all(10),
                        child: new Text(this.response, {
                            style: new TextStyle({
                                color: Colors.gray,
                            })
                        }),
                    }),

                    Image.network(
                        'https://raw.githubusercontent.com/mxflutter/mxflutter/master/mxflutter/mxflutterlogo.png',{
                        width: 260,
                        height: 200,
                    })

                ],
            })
        });
        return widget;
    }
}

module.exports = {
    PageExampleMXMirror,
};