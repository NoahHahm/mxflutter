//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/shortcuts.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerActionsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_intent.funName] = _intent;
  m[_intentDoNothing.funName] = _intentDoNothing;
  m[_callbackAction.funName] = _callbackAction;
  m[_actionDispatcher.funName] = _actionDispatcher;
  m[_actions.funName] = _actions;
  m[_focusableActionDetector.funName] = _focusableActionDetector;
  m[_doNothingAction.funName] = _doNothingAction;
  m[_doNothingActionKey.funName] = _doNothingActionKey;
  m[_activateActionKey.funName] = _activateActionKey;
  m[_selectActionKey.funName] = _selectActionKey;
  return m;
}

var _intent = MXFunctionInvoke(
  "Intent",
  ({
    LocalKey key,
  }) =>
      Intent(
    key,
  ),
  [
    "key",
  ],
);
var _intentDoNothing =
    MXFunctionInvoke("Intent.doNothing", () => Intent.doNothing);
var _callbackAction = MXFunctionInvoke(
  "CallbackAction",
  ({
    LocalKey intentKey,
    dynamic onInvoke,
  }) =>
      CallbackAction(
    intentKey,
    onInvoke: createVoidTwoParamsClosure<FocusNode, Intent>(
        _callbackAction.buildOwner, onInvoke),
  ),
  [
    "intentKey",
    "onInvoke",
  ],
);
var _actionDispatcher = MXFunctionInvoke(
  "ActionDispatcher",
  () => ActionDispatcher(),
  [],
);
var _actions = MXFunctionInvoke(
  "Actions",
  ({
    Key key,
    ActionDispatcher dispatcher,
    dynamic actions,
    Widget child,
  }) =>
      Actions(
    key: key,
    dispatcher: dispatcher,
    actions: toMapT<LocalKey, Action Function()>(actions),
    child: child,
  ),
  [
    "key",
    "dispatcher",
    "actions",
    "child",
  ],
);
var _focusableActionDetector = MXFunctionInvoke(
  "FocusableActionDetector",
  ({
    Key key,
    bool enabled = true,
    FocusNode focusNode,
    bool autofocus = false,
    dynamic shortcuts,
    dynamic actions,
    dynamic onShowFocusHighlight,
    dynamic onShowHoverHighlight,
    dynamic onFocusChange,
    Widget child,
  }) =>
      FocusableActionDetector(
    key: key,
    enabled: enabled,
    focusNode: focusNode,
    autofocus: autofocus,
    shortcuts: toMapT<LogicalKeySet, Intent>(shortcuts),
    actions: toMapT<LocalKey, Action Function()>(actions),
    onShowFocusHighlight: createValueChangedGenericClosure<bool>(
        _focusableActionDetector.buildOwner, onShowFocusHighlight),
    onShowHoverHighlight: createValueChangedGenericClosure<bool>(
        _focusableActionDetector.buildOwner, onShowHoverHighlight),
    onFocusChange: createValueChangedGenericClosure<bool>(
        _focusableActionDetector.buildOwner, onFocusChange),
    child: child,
  ),
  [
    "key",
    "enabled",
    "focusNode",
    "autofocus",
    "shortcuts",
    "actions",
    "onShowFocusHighlight",
    "onShowHoverHighlight",
    "onFocusChange",
    "child",
  ],
);
var _doNothingAction = MXFunctionInvoke(
  "DoNothingAction",
  () => DoNothingAction(),
  [],
);
var _doNothingActionKey =
    MXFunctionInvoke("DoNothingAction.key", () => DoNothingAction.key);
var _activateActionKey =
    MXFunctionInvoke("ActivateAction.key", () => ActivateAction.key);
var _selectActionKey =
    MXFunctionInvoke("SelectAction.key", () => SelectAction.key);
