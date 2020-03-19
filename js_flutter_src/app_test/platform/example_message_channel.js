

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
  MethodChannel
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

const packages__dio = require("packages/dio/dio.js");

const bridge_netwrok = require("./native_bridge/mxf_bridge_netwrok.js");
const network = bridge_netwrok.network;
const fetch = bridge_netwrok.fetch;


let cgi = "https://c.m.163.com/nc/article/headline/T1348649580692/0-10.html";

class PageExampleMessageChannel extends MXJSStatefulWidget {
  constructor() {
    super("PageExampleMessageChannel");

  }

  createState() {
    return new PageExampleMessageChannelState(this);
  }
}

class PageExampleMessageChannelState extends MXJSWidgetState {
  constructor() {
    super("PageExampleMessageChannelState");
    this.response = "点击小人Run上面的代码";

    this.methodChannel = new MethodChannel("MXFlutter_MethodChannel_Demo");
  }

  dioCodeText() {
    return "let result = await this.methodChannel.invokeMethod('callNativeIconListRefresh', {});";
  }

  async callMethodChannel() {

    //MessageChannel 用法示例
    let result = await this.methodChannel.invokeMethod("callNativeIconListRefresh", {});

    MXJSLog.log("callNativeIconListRefresh result: " + result);
    return result;

  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text("MessageChannel Example"),
      }),
      body: new ListView({
        children: [
          new SectionTitle("Code 调用MessageChannel"),
          new ListTile({
            trailing: new Icon(Icons["directions_run"]),
            title: new Text(this.dioCodeText(), {
              style: new TextStyle({
                color: Colors.gray,
              })
            }),
            onTap: async function () {
              let response = await this.callMethodChannel();

              this.setState(function () {

                this.response =  JSON.stringify( response?response:"messagechannel return empty");

              }.bind(this));

            }.bind(this)
          }),
          new SectionTitle("MessageChannel Result"),

          new Padding({
            padding: EdgeInsets.all(10),
            child: new Text(this.response, {
              style: new TextStyle({
                color: Colors.gray,
              })
            }),
          })

        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleMessageChannel,
};
