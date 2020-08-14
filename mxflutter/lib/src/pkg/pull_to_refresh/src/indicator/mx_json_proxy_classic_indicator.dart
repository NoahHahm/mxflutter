//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import '../../../../mx_json_to_dart.dart';
import '../../../../mx_json_build_owner.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";
import '../../mx_json_proxy_pull_to_refresh.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

Map<String, MXFunctionInvoke> registerClassicIndicatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_classicFooter.funName] = _classicFooter;
  m[_classicHeader.funName] = _classicHeader;
  return m;
}

var _classicHeader = MXFunctionInvoke(
  "ClassicHeader",
  ({
    Key key,
    RefreshStyle refreshStyle: RefreshStyle.Follow,
    dynamic height: 60.0,
    Duration completeDuration: const Duration(milliseconds: 600),
    dynamic outerBuilder,
    TextStyle textStyle: const TextStyle(color: Colors.grey),
    String releaseText,
    String refreshingText,
    Widget canTwoLevelIcon,
    Widget twoLevelView,
    String canTwoLevelText,
    String completeText,
    String failedText,
    String idleText,
    IconPosition iconPos: IconPosition.left,
    dynamic spacing: 15.0,
    Widget refreshingIcon,
    Widget failedIcon: const Icon(Icons.error, color: Colors.grey),
    Widget completeIcon: const Icon(Icons.done, color: Colors.grey),
    Widget idleIcon = const Icon(Icons.arrow_downward, color: Colors.grey),
    Widget releaseIcon = const Icon(Icons.refresh, color: Colors.grey),
  }) =>
      ClassicHeader(
    key: key,
    refreshStyle: refreshStyle,
    height: height?.toDouble(),
    completeDuration: completeDuration,
    outerBuilder: outerBuilder,
    textStyle: textStyle,
    releaseText: releaseText,
    refreshingText: refreshingText,
    canTwoLevelIcon: canTwoLevelIcon,
    twoLevelView: twoLevelView,
    canTwoLevelText: canTwoLevelText,
    completeText: completeText,
    failedText: failedText,
    idleText: idleText,
    iconPos: iconPos,
    spacing: spacing?.toDouble(),
    refreshingIcon: refreshingIcon,
    failedIcon: failedIcon,
    completeIcon: completeIcon,
    idleIcon: idleIcon,
    releaseIcon: releaseIcon,
  ),
);

var _classicFooter = MXFunctionInvoke(
  "ClassicFooter",
  ({
    Key key,
    VoidCallback onClick,
    LoadStyle loadStyle: LoadStyle.ShowAlways,
    dynamic height: 60.0,
    dynamic outerBuilder,
    TextStyle textStyle: const TextStyle(color: Colors.grey),
    String loadingText,
    String noDataText,
    Widget noMoreIcon,
    String idleText,
    String failedText,
    String canLoadingText,
    Widget failedIcon: const Icon(Icons.error, color: Colors.grey),
    IconPosition iconPos: IconPosition.left,
    dynamic spacing: 15.0,
    Duration completeDuration: const Duration(milliseconds: 300),
    Widget loadingIcon,
    Widget canLoadingIcon: const Icon(Icons.autorenew, color: Colors.grey),
    Widget idleIcon = const Icon(Icons.arrow_upward, color: Colors.grey),
  }) =>
      ClassicFooter(
    key: key,
    onClick: createVoidCallbackClosure(_classicFooter.buildOwner, onClick),
    loadStyle: loadStyle,
    height: height?.toDouble(),
    outerBuilder: outerBuilder,
    textStyle: textStyle,
    loadingText: loadingText,
    noDataText: noDataText,
    noMoreIcon: noMoreIcon,
    idleText: idleText,
    failedText: failedText,
    canLoadingText: canLoadingText,
    failedIcon: failedIcon,
    iconPos: iconPos,
    spacing: spacing?.toDouble(),
    completeDuration: completeDuration,
    loadingIcon: loadingIcon,
    canLoadingIcon: canLoadingIcon,
    idleIcon: idleIcon,
  ),
);
