//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'dart:math' as math;
import 'package:flutter/animation.dart' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/gestures.dart' ;
import 'package:flutter/scheduler.dart' ;
import 'package:flutter/semantics.dart' ;
import 'package:vector_math/vector_math_64.dart' ;
import 'package:flutter/src/rendering/box.dart' ;
import 'package:flutter/src/rendering/object.dart' ;
import 'package:flutter/src/rendering/sliver.dart' ;
import 'package:flutter/src/rendering/viewport.dart' ;
import 'package:flutter/src/rendering/viewport_offset.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverPersistentHeaderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_overScrollHeaderStretchConfiguration.funName] = _overScrollHeaderStretchConfiguration;
  m[_renderSliverPersistentHeader.funName] = _renderSliverPersistentHeader;
  m[_renderSliverScrollingPersistentHeader.funName] = _renderSliverScrollingPersistentHeader;
  m[_renderSliverPinnedPersistentHeader.funName] = _renderSliverPinnedPersistentHeader;
  m[_floatingHeaderSnapConfiguration.funName] = _floatingHeaderSnapConfiguration;
  m[_renderSliverFloatingPersistentHeader.funName] = _renderSliverFloatingPersistentHeader;
  m[_renderSliverFloatingPinnedPersistentHeader.funName] = _renderSliverFloatingPinnedPersistentHeader;
  return m;
}
var _overScrollHeaderStretchConfiguration = MXFunctionInvoke(
    "OverScrollHeaderStretchConfiguration",
    (
      {
      dynamic stretchTriggerOffset = 100.0,
      dynamic onStretchTrigger,
      }
    ) =>
      OverScrollHeaderStretchConfiguration(
      stretchTriggerOffset: stretchTriggerOffset?.toDouble(),
      onStretchTrigger: null,
    ),
);
var _renderSliverPersistentHeader = MXFunctionInvoke(
    "RenderSliverPersistentHeader",
    (
      {
      RenderBox child,
      OverScrollHeaderStretchConfiguration stretchConfiguration,
      }
    ) =>
      RenderSliverPersistentHeader(
      child: child,
      stretchConfiguration: stretchConfiguration,
    ),
);
var _renderSliverScrollingPersistentHeader = MXFunctionInvoke(
    "RenderSliverScrollingPersistentHeader",
    (
      {
      RenderBox child,
      OverScrollHeaderStretchConfiguration stretchConfiguration,
      }
    ) =>
      RenderSliverScrollingPersistentHeader(
      child: child,
      stretchConfiguration: stretchConfiguration,
    ),
);
var _renderSliverPinnedPersistentHeader = MXFunctionInvoke(
    "RenderSliverPinnedPersistentHeader",
    (
      {
      RenderBox child,
      OverScrollHeaderStretchConfiguration stretchConfiguration,
      }
    ) =>
      RenderSliverPinnedPersistentHeader(
      child: child,
      stretchConfiguration: stretchConfiguration,
    ),
);
var _floatingHeaderSnapConfiguration = MXFunctionInvoke(
    "FloatingHeaderSnapConfiguration",
    (
      {
      TickerProvider vsync,
      Curve curve,
      Duration duration,
      }
    ) =>
      FloatingHeaderSnapConfiguration(
      vsync: vsync,
      curve: curve,
      duration: duration,
    ),
);
var _renderSliverFloatingPersistentHeader = MXFunctionInvoke(
    "RenderSliverFloatingPersistentHeader",
    (
      {
      RenderBox child,
      FloatingHeaderSnapConfiguration snapConfiguration,
      OverScrollHeaderStretchConfiguration stretchConfiguration,
      }
    ) =>
      RenderSliverFloatingPersistentHeader(
      child: child,
      snapConfiguration: snapConfiguration,
      stretchConfiguration: stretchConfiguration,
    ),
);
var _renderSliverFloatingPinnedPersistentHeader = MXFunctionInvoke(
    "RenderSliverFloatingPinnedPersistentHeader",
    (
      {
      RenderBox child,
      FloatingHeaderSnapConfiguration snapConfiguration,
      OverScrollHeaderStretchConfiguration stretchConfiguration,
      }
    ) =>
      RenderSliverFloatingPinnedPersistentHeader(
      child: child,
      snapConfiguration: snapConfiguration,
      stretchConfiguration: stretchConfiguration,
    ),
);
