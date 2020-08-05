//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tapDownDetails.funName] = _tapDownDetails;
  m[_tapUpDetails.funName] = _tapUpDetails;
  m[_tapGestureRecognizer.funName] = _tapGestureRecognizer;
  return m;
}
var _tapDownDetails = MXFunctionInvoke(
    "TapDownDetails",
    (
      {
      Offset globalPosition,
      Offset localPosition,
      PointerDeviceKind kind,
      }
    ) =>
      TapDownDetails(
      globalPosition: globalPosition,
      localPosition: localPosition,
      kind: kind,
    ),
);
var _tapUpDetails = MXFunctionInvoke(
    "TapUpDetails",
    (
      {
      Offset globalPosition,
      Offset localPosition,
      }
    ) =>
      TapUpDetails(
      globalPosition: globalPosition,
      localPosition: localPosition,
    ),
);
var _tapGestureRecognizer = MXFunctionInvoke(
    "TapGestureRecognizer",
    (
      {
      Object debugOwner,
      }
    ) =>
      TapGestureRecognizer(
      debugOwner: debugOwner,
    ),
);
