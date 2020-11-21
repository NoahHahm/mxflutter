//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/image_resolution.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/image_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageResolutionSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_assetImage.funName] = _assetImage;
  return m;
}

var _assetImage = MXFunctionInvoke(
  "AssetImage",
  ({
    String assetName,
    AssetBundle bundle,
    String package,
  }) =>
      AssetImage(
    assetName,
    bundle: bundle,
    package: package,
  ),
  [
    "assetName",
    "bundle",
    "__mx_package",
  ],
);
