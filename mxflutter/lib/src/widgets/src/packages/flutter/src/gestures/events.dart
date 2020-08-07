//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/gestures/events.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEventsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pointerAddedEvent.funName] = _pointerAddedEvent;
  m[_pointerRemovedEvent.funName] = _pointerRemovedEvent;
  m[_pointerHoverEvent.funName] = _pointerHoverEvent;
  m[_pointerEnterEvent.funName] = _pointerEnterEvent;
  m[_pointerEnterEvent_fromHoverEvent.funName] = _pointerEnterEvent_fromHoverEvent;
  m[_pointerEnterEvent_fromMouseEvent.funName] = _pointerEnterEvent_fromMouseEvent;
  m[_pointerExitEvent.funName] = _pointerExitEvent;
  m[_pointerExitEvent_fromHoverEvent.funName] = _pointerExitEvent_fromHoverEvent;
  m[_pointerExitEvent_fromMouseEvent.funName] = _pointerExitEvent_fromMouseEvent;
  m[_pointerDownEvent.funName] = _pointerDownEvent;
  m[_pointerMoveEvent.funName] = _pointerMoveEvent;
  m[_pointerUpEvent.funName] = _pointerUpEvent;
  m[_pointerScrollEvent.funName] = _pointerScrollEvent;
  m[_pointerCancelEvent.funName] = _pointerCancelEvent;
  return m;
}
var _pointerAddedEvent = MXFunctionInvoke(
    "PointerAddedEvent",
    (
      {
      Duration timeStamp,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      bool obscured = false,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distance = 0.0,
      dynamic distanceMax = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      Matrix4 transform,
      PointerAddedEvent original,
      }
    ) =>
      PointerAddedEvent(
      timeStamp: timeStamp,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      obscured: obscured,
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distance: distance?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      transform: transform,
      original: original,
    ),
);
var _pointerRemovedEvent = MXFunctionInvoke(
    "PointerRemovedEvent",
    (
      {
      Duration timeStamp,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      bool obscured = false,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distanceMax = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      Matrix4 transform,
      PointerRemovedEvent original,
      }
    ) =>
      PointerRemovedEvent(
      timeStamp: timeStamp,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      obscured: obscured,
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      transform: transform,
      original: original,
    ),
);
var _pointerHoverEvent = MXFunctionInvoke(
    "PointerHoverEvent",
    (
      {
      Duration timeStamp,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      Offset delta,
      Offset localDelta,
      int buttons = 0,
      bool obscured = false,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distance = 0.0,
      dynamic distanceMax = 0.0,
      dynamic size = 0.0,
      dynamic radiusMajor = 0.0,
      dynamic radiusMinor = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      bool synthesized = false,
      Matrix4 transform,
      PointerHoverEvent original,
      }
    ) =>
      PointerHoverEvent(
      timeStamp: timeStamp,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      delta: delta,
      localDelta: localDelta,
      buttons: buttons,
      obscured: obscured,
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distance: distance?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      size: size?.toDouble(),
      radiusMajor: radiusMajor?.toDouble(),
      radiusMinor: radiusMinor?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      synthesized: synthesized,
      transform: transform,
      original: original,
    ),
);
var _pointerEnterEvent = MXFunctionInvoke(
    "PointerEnterEvent",
    (
      {
      Duration timeStamp,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      Offset delta,
      Offset localDelta,
      int buttons = 0,
      bool obscured = false,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distance = 0.0,
      dynamic distanceMax = 0.0,
      dynamic size = 0.0,
      dynamic radiusMajor = 0.0,
      dynamic radiusMinor = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      bool down = false,
      bool synthesized = false,
      Matrix4 transform,
      PointerEnterEvent original,
      }
    ) =>
      PointerEnterEvent(
      timeStamp: timeStamp,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      delta: delta,
      localDelta: localDelta,
      buttons: buttons,
      obscured: obscured,
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distance: distance?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      size: size?.toDouble(),
      radiusMajor: radiusMajor?.toDouble(),
      radiusMinor: radiusMinor?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      down: down,
      synthesized: synthesized,
      transform: transform,
      original: original,
    ),
);
var _pointerEnterEvent_fromHoverEvent = MXFunctionInvoke(
  "PointerEnterEvent.fromHoverEvent",
    (
      {
      PointerHoverEvent event,
      }
    ) =>
      PointerEnterEvent.fromHoverEvent(
      event,
    ),
);
var _pointerEnterEvent_fromMouseEvent = MXFunctionInvoke(
  "PointerEnterEvent.fromMouseEvent",
    (
      {
      PointerEvent event,
      }
    ) =>
      PointerEnterEvent.fromMouseEvent(
      event,
    ),
);
var _pointerExitEvent = MXFunctionInvoke(
    "PointerExitEvent",
    (
      {
      Duration timeStamp,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      Offset delta,
      Offset localDelta,
      int buttons = 0,
      bool obscured = false,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distance = 0.0,
      dynamic distanceMax = 0.0,
      dynamic size = 0.0,
      dynamic radiusMajor = 0.0,
      dynamic radiusMinor = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      bool down = false,
      bool synthesized = false,
      Matrix4 transform,
      PointerExitEvent original,
      }
    ) =>
      PointerExitEvent(
      timeStamp: timeStamp,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      delta: delta,
      localDelta: localDelta,
      buttons: buttons,
      obscured: obscured,
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distance: distance?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      size: size?.toDouble(),
      radiusMajor: radiusMajor?.toDouble(),
      radiusMinor: radiusMinor?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      down: down,
      synthesized: synthesized,
      transform: transform,
      original: original,
    ),
);
var _pointerExitEvent_fromHoverEvent = MXFunctionInvoke(
  "PointerExitEvent.fromHoverEvent",
    (
      {
      PointerHoverEvent event,
      }
    ) =>
      PointerExitEvent.fromHoverEvent(
      event,
    ),
);
var _pointerExitEvent_fromMouseEvent = MXFunctionInvoke(
  "PointerExitEvent.fromMouseEvent",
    (
      {
      PointerEvent event,
      }
    ) =>
      PointerExitEvent.fromMouseEvent(
      event,
    ),
);
var _pointerDownEvent = MXFunctionInvoke(
    "PointerDownEvent",
    (
      {
      Duration timeStamp,
      int pointer = 0,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      int buttons = 1,
      bool obscured = false,
      dynamic pressure = 1.0,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distanceMax = 0.0,
      dynamic size = 0.0,
      dynamic radiusMajor = 0.0,
      dynamic radiusMinor = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      Matrix4 transform,
      PointerDownEvent original,
      }
    ) =>
      PointerDownEvent(
      timeStamp: timeStamp,
      pointer: pointer,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      buttons: buttons,
      obscured: obscured,
      pressure: pressure?.toDouble(),
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      size: size?.toDouble(),
      radiusMajor: radiusMajor?.toDouble(),
      radiusMinor: radiusMinor?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      transform: transform,
      original: original,
    ),
);
var _pointerMoveEvent = MXFunctionInvoke(
    "PointerMoveEvent",
    (
      {
      Duration timeStamp,
      int pointer = 0,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      Offset delta,
      Offset localDelta,
      int buttons = 1,
      bool obscured = false,
      dynamic pressure = 1.0,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distanceMax = 0.0,
      dynamic size = 0.0,
      dynamic radiusMajor = 0.0,
      dynamic radiusMinor = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      int platformData = 0,
      bool synthesized = false,
      Matrix4 transform,
      PointerMoveEvent original,
      }
    ) =>
      PointerMoveEvent(
      timeStamp: timeStamp,
      pointer: pointer,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      delta: delta,
      localDelta: localDelta,
      buttons: buttons,
      obscured: obscured,
      pressure: pressure?.toDouble(),
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      size: size?.toDouble(),
      radiusMajor: radiusMajor?.toDouble(),
      radiusMinor: radiusMinor?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      platformData: platformData,
      synthesized: synthesized,
      transform: transform,
      original: original,
    ),
);
var _pointerUpEvent = MXFunctionInvoke(
    "PointerUpEvent",
    (
      {
      Duration timeStamp,
      int pointer = 0,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      int buttons = 0,
      bool obscured = false,
      dynamic pressure = 0.0,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distance = 0.0,
      dynamic distanceMax = 0.0,
      dynamic size = 0.0,
      dynamic radiusMajor = 0.0,
      dynamic radiusMinor = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      Matrix4 transform,
      PointerUpEvent original,
      }
    ) =>
      PointerUpEvent(
      timeStamp: timeStamp,
      pointer: pointer,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      buttons: buttons,
      obscured: obscured,
      pressure: pressure?.toDouble(),
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distance: distance?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      size: size?.toDouble(),
      radiusMajor: radiusMajor?.toDouble(),
      radiusMinor: radiusMinor?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      transform: transform,
      original: original,
    ),
);
var _pointerScrollEvent = MXFunctionInvoke(
    "PointerScrollEvent",
    (
      {
      Duration timeStamp,
      PointerDeviceKind kind = PointerDeviceKind.mouse,
      int device = 0,
      Offset position,
      Offset localPosition,
      Offset scrollDelta,
      Matrix4 transform,
      PointerScrollEvent original,
      }
    ) =>
      PointerScrollEvent(
      timeStamp: timeStamp,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      scrollDelta: scrollDelta,
      transform: transform,
      original: original,
    ),
);
var _pointerCancelEvent = MXFunctionInvoke(
    "PointerCancelEvent",
    (
      {
      Duration timeStamp,
      int pointer = 0,
      PointerDeviceKind kind = PointerDeviceKind.touch,
      int device = 0,
      Offset position,
      Offset localPosition,
      int buttons = 0,
      bool obscured = false,
      dynamic pressureMin = 1.0,
      dynamic pressureMax = 1.0,
      dynamic distance = 0.0,
      dynamic distanceMax = 0.0,
      dynamic size = 0.0,
      dynamic radiusMajor = 0.0,
      dynamic radiusMinor = 0.0,
      dynamic radiusMin = 0.0,
      dynamic radiusMax = 0.0,
      dynamic orientation = 0.0,
      dynamic tilt = 0.0,
      Matrix4 transform,
      PointerCancelEvent original,
      }
    ) =>
      PointerCancelEvent(
      timeStamp: timeStamp,
      pointer: pointer,
      kind: kind,
      device: device,
      position: position,
      localPosition: localPosition,
      buttons: buttons,
      obscured: obscured,
      pressureMin: pressureMin?.toDouble(),
      pressureMax: pressureMax?.toDouble(),
      distance: distance?.toDouble(),
      distanceMax: distanceMax?.toDouble(),
      size: size?.toDouble(),
      radiusMajor: radiusMajor?.toDouble(),
      radiusMinor: radiusMinor?.toDouble(),
      radiusMin: radiusMin?.toDouble(),
      radiusMax: radiusMax?.toDouble(),
      orientation: orientation?.toDouble(),
      tilt: tilt?.toDouble(),
      transform: transform,
      original: original,
    ),
);
