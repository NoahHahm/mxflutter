//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/scrollbar.dart';
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollbarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoScrollbar.funName] = cupertinoScrollbar;
  return m;
}
var cupertinoScrollbar = MXFunctionInvoke(
    "CupertinoScrollbar",
    ({
      Key key,
      ScrollController controller,
      bool isAlwaysShown = false,
      Widget child,
    }) =>
      CupertinoScrollbar(
      key: key,
      controller: controller,
      isAlwaysShown: isAlwaysShown,
      child: child,
    ),
);
