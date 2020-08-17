//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInputDecoratorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_floatingLabelBehavior.funName] = _floatingLabelBehavior;
  m[_inputDecorator.funName] = _inputDecorator;
  m[_inputDecoration.funName] = _inputDecoration;
  m[_inputDecorationCollapsed.funName] = _inputDecorationCollapsed;
  m[_inputDecorationTheme.funName] = _inputDecorationTheme;
  return m;
}

var _floatingLabelBehavior = MXFunctionInvoke(
    "FloatingLabelBehavior",
    ({String name, int index}) => MXFloatingLabelBehavior.parse(name, index),
    ["name", "index"]);
var _inputDecorator = MXFunctionInvoke(
  "InputDecorator",
  ({
    Key key,
    InputDecoration decoration,
    TextStyle baseStyle,
    TextAlign textAlign,
    TextAlignVertical textAlignVertical,
    bool isFocused = false,
    bool isHovering = false,
    bool expands = false,
    bool isEmpty = false,
    Widget child,
  }) =>
      InputDecorator(
    key: key,
    decoration: decoration,
    baseStyle: baseStyle,
    textAlign: textAlign,
    textAlignVertical: textAlignVertical,
    isFocused: isFocused,
    isHovering: isHovering,
    expands: expands,
    isEmpty: isEmpty,
    child: child,
  ),
  [
    "key",
    "decoration",
    "baseStyle",
    "textAlign",
    "textAlignVertical",
    "isFocused",
    "isHovering",
    "expands",
    "isEmpty",
    "child",
  ],
);
var _inputDecoration = MXFunctionInvoke(
  "InputDecoration",
  ({
    Widget icon,
    String labelText,
    TextStyle labelStyle,
    String helperText,
    TextStyle helperStyle,
    int helperMaxLines,
    String hintText,
    TextStyle hintStyle,
    int hintMaxLines,
    String errorText,
    TextStyle errorStyle,
    int errorMaxLines,
    bool hasFloatingPlaceholder = true,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
    bool isDense,
    EdgeInsetsGeometry contentPadding,
    Widget prefixIcon,
    BoxConstraints prefixIconConstraints,
    Widget prefix,
    String prefixText,
    TextStyle prefixStyle,
    Widget suffixIcon,
    Widget suffix,
    String suffixText,
    TextStyle suffixStyle,
    BoxConstraints suffixIconConstraints,
    Widget counter,
    String counterText,
    TextStyle counterStyle,
    bool filled,
    Color fillColor,
    Color focusColor,
    Color hoverColor,
    InputBorder errorBorder,
    InputBorder focusedBorder,
    InputBorder focusedErrorBorder,
    InputBorder disabledBorder,
    InputBorder enabledBorder,
    InputBorder border,
    bool enabled = true,
    String semanticCounterText,
    bool alignLabelWithHint,
  }) =>
      InputDecoration(
    icon: icon,
    labelText: labelText,
    labelStyle: labelStyle,
    helperText: helperText,
    helperStyle: helperStyle,
    helperMaxLines: helperMaxLines,
    hintText: hintText,
    hintStyle: hintStyle,
    hintMaxLines: hintMaxLines,
    errorText: errorText,
    errorStyle: errorStyle,
    errorMaxLines: errorMaxLines,
    hasFloatingPlaceholder: hasFloatingPlaceholder,
    floatingLabelBehavior: floatingLabelBehavior,
    isDense: isDense,
    contentPadding: contentPadding,
    prefixIcon: prefixIcon,
    prefixIconConstraints: prefixIconConstraints,
    prefix: prefix,
    prefixText: prefixText,
    prefixStyle: prefixStyle,
    suffixIcon: suffixIcon,
    suffix: suffix,
    suffixText: suffixText,
    suffixStyle: suffixStyle,
    suffixIconConstraints: suffixIconConstraints,
    counter: counter,
    counterText: counterText,
    counterStyle: counterStyle,
    filled: filled,
    fillColor: fillColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    errorBorder: errorBorder,
    focusedBorder: focusedBorder,
    focusedErrorBorder: focusedErrorBorder,
    disabledBorder: disabledBorder,
    enabledBorder: enabledBorder,
    border: border,
    enabled: enabled,
    semanticCounterText: semanticCounterText,
    alignLabelWithHint: alignLabelWithHint,
  ),
  [
    "icon",
    "labelText",
    "labelStyle",
    "helperText",
    "helperStyle",
    "helperMaxLines",
    "hintText",
    "hintStyle",
    "hintMaxLines",
    "errorText",
    "errorStyle",
    "errorMaxLines",
    "hasFloatingPlaceholder",
    "floatingLabelBehavior",
    "isDense",
    "contentPadding",
    "prefixIcon",
    "prefixIconConstraints",
    "prefix",
    "prefixText",
    "prefixStyle",
    "suffixIcon",
    "suffix",
    "suffixText",
    "suffixStyle",
    "suffixIconConstraints",
    "counter",
    "counterText",
    "counterStyle",
    "filled",
    "fillColor",
    "focusColor",
    "hoverColor",
    "errorBorder",
    "focusedBorder",
    "focusedErrorBorder",
    "disabledBorder",
    "enabledBorder",
    "border",
    "enabled",
    "semanticCounterText",
    "alignLabelWithHint",
  ],
);
var _inputDecorationCollapsed = MXFunctionInvoke(
  "InputDecoration.collapsed",
  ({
    String hintText,
    bool hasFloatingPlaceholder = true,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
    TextStyle hintStyle,
    bool filled = false,
    Color fillColor,
    Color focusColor,
    Color hoverColor,
    InputBorder border = InputBorder.none,
    bool enabled = true,
  }) =>
      InputDecoration.collapsed(
    hintText: hintText,
    hasFloatingPlaceholder: hasFloatingPlaceholder,
    floatingLabelBehavior: floatingLabelBehavior,
    hintStyle: hintStyle,
    filled: filled,
    fillColor: fillColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    border: border,
    enabled: enabled,
  ),
  [
    "hintText",
    "hasFloatingPlaceholder",
    "floatingLabelBehavior",
    "hintStyle",
    "filled",
    "fillColor",
    "focusColor",
    "hoverColor",
    "border",
    "enabled",
  ],
);
var _inputDecorationTheme = MXFunctionInvoke(
  "InputDecorationTheme",
  ({
    TextStyle labelStyle,
    TextStyle helperStyle,
    int helperMaxLines,
    TextStyle hintStyle,
    TextStyle errorStyle,
    int errorMaxLines,
    bool hasFloatingPlaceholder = true,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
    bool isDense = false,
    EdgeInsetsGeometry contentPadding,
    bool isCollapsed = false,
    TextStyle prefixStyle,
    TextStyle suffixStyle,
    TextStyle counterStyle,
    bool filled = false,
    Color fillColor,
    Color focusColor,
    Color hoverColor,
    InputBorder errorBorder,
    InputBorder focusedBorder,
    InputBorder focusedErrorBorder,
    InputBorder disabledBorder,
    InputBorder enabledBorder,
    InputBorder border,
    bool alignLabelWithHint = false,
  }) =>
      InputDecorationTheme(
    labelStyle: labelStyle,
    helperStyle: helperStyle,
    helperMaxLines: helperMaxLines,
    hintStyle: hintStyle,
    errorStyle: errorStyle,
    errorMaxLines: errorMaxLines,
    hasFloatingPlaceholder: hasFloatingPlaceholder,
    floatingLabelBehavior: floatingLabelBehavior,
    isDense: isDense,
    contentPadding: contentPadding,
    isCollapsed: isCollapsed,
    prefixStyle: prefixStyle,
    suffixStyle: suffixStyle,
    counterStyle: counterStyle,
    filled: filled,
    fillColor: fillColor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    errorBorder: errorBorder,
    focusedBorder: focusedBorder,
    focusedErrorBorder: focusedErrorBorder,
    disabledBorder: disabledBorder,
    enabledBorder: enabledBorder,
    border: border,
    alignLabelWithHint: alignLabelWithHint,
  ),
  [
    "labelStyle",
    "helperStyle",
    "helperMaxLines",
    "hintStyle",
    "errorStyle",
    "errorMaxLines",
    "hasFloatingPlaceholder",
    "floatingLabelBehavior",
    "isDense",
    "contentPadding",
    "isCollapsed",
    "prefixStyle",
    "suffixStyle",
    "counterStyle",
    "filled",
    "fillColor",
    "focusColor",
    "hoverColor",
    "errorBorder",
    "focusedBorder",
    "focusedErrorBorder",
    "disabledBorder",
    "enabledBorder",
    "border",
    "alignLabelWithHint",
  ],
);

class MXFloatingLabelBehavior {
  static FloatingLabelBehavior parse(String name, int index) {
    switch (name) {
      case 'FloatingLabelBehavior.never':
        return FloatingLabelBehavior.never;
      case 'FloatingLabelBehavior.auto':
        return FloatingLabelBehavior.auto;
      case 'FloatingLabelBehavior.always':
        return FloatingLabelBehavior.always;
    }
    return null;
  }
}
