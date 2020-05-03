//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

'use strict';

let frameworkExports = require("./js_flutter_framework.js");
let basicExports = require("./js_flutter_basic_types.js");
let materialExports = require("./js_flutter_material.js");
let layoutExports = require("./js_flutter_layout.js");
let textExports = require("./js_flutter_text.js");
let imageExports = require("./js_flutter_image.js");
let animationExports = require("./js_flutter_animation.js");
let cupertinoExports = require("./js_flutter_cupertino.js");



let src__cupertino__dialog = Object.create(null);
src__cupertino__dialog.CupertinoAlertDialog = cupertinoExports.CupertinoAlertDialog;
src__cupertino__dialog.CupertinoDialog = cupertinoExports.CupertinoDialog;
src__cupertino__dialog.CupertinoDialogAction = cupertinoExports.CupertinoDialogAction;
exports.src__cupertino__dialog = src__cupertino__dialog;