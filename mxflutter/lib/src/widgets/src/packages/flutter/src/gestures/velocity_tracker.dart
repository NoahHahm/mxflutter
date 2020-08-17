//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/lsq_solver.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerVelocityTrackerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_velocity.funName] = _velocity;
  m[_velocity_zero.funName] = _velocity_zero;
  m[_velocityEstimate.funName] = _velocityEstimate;
  m[_velocityTracker.funName] = _velocityTracker;
  return m;
}

var _velocity = MXFunctionInvoke(
  "Velocity",
  ({
    Offset pixelsPerSecond,
  }) =>
      Velocity(
    pixelsPerSecond: pixelsPerSecond,
  ),
  [
    "pixelsPerSecond",
  ],
);
var _velocity_zero = MXFunctionInvoke("Velocity.zero", () => Velocity.zero);
var _velocityEstimate = MXFunctionInvoke(
  "VelocityEstimate",
  ({
    Offset pixelsPerSecond,
    dynamic confidence,
    Duration duration,
    Offset offset,
  }) =>
      VelocityEstimate(
    pixelsPerSecond: pixelsPerSecond,
    confidence: confidence?.toDouble(),
    duration: duration,
    offset: offset,
  ),
  [
    "pixelsPerSecond",
    "confidence",
    "duration",
    "offset",
  ],
);
var _velocityTracker = MXFunctionInvoke(
  "VelocityTracker",
  () => VelocityTracker(),
  [],
);
