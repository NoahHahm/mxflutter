//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/table.dart';
import 'dart:collection';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/table_border.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tableCellParentData.funName] = _tableCellParentData;
  m[_intrinsicColumnWidth.funName] = _intrinsicColumnWidth;
  m[_fixedColumnWidth.funName] = _fixedColumnWidth;
  m[_fractionColumnWidth.funName] = _fractionColumnWidth;
  m[_flexColumnWidth.funName] = _flexColumnWidth;
  m[_maxColumnWidth.funName] = _maxColumnWidth;
  m[_minColumnWidth.funName] = _minColumnWidth;
  m[_tableCellVerticalAlignment.funName] = _tableCellVerticalAlignment;
  m[_renderTable.funName] = _renderTable;
  return m;
}
var _tableCellParentData = MXFunctionInvoke(
    "TableCellParentData",
    (
    ) =>
      TableCellParentData(
    ),
);
var _intrinsicColumnWidth = MXFunctionInvoke(
    "IntrinsicColumnWidth",
    (
      {
      dynamic flex,
      }
    ) =>
      IntrinsicColumnWidth(
      flex: flex?.toDouble(),
    ),
);
var _fixedColumnWidth = MXFunctionInvoke(
    "FixedColumnWidth",
    (
      {
      dynamic value,
      }
    ) =>
      FixedColumnWidth(
      value?.toDouble(),
    ),
);
var _fractionColumnWidth = MXFunctionInvoke(
    "FractionColumnWidth",
    (
      {
      dynamic value,
      }
    ) =>
      FractionColumnWidth(
      value?.toDouble(),
    ),
);
var _flexColumnWidth = MXFunctionInvoke(
    "FlexColumnWidth",
    (
      {
      dynamic value,
      }
    ) =>
      FlexColumnWidth(
      value?.toDouble(),
    ),
);
var _maxColumnWidth = MXFunctionInvoke(
    "MaxColumnWidth",
    (
      {
      TableColumnWidth a,
      TableColumnWidth b,
      }
    ) =>
      MaxColumnWidth(
      a,
      b,
    ),
);
var _minColumnWidth = MXFunctionInvoke(
    "MinColumnWidth",
    (
      {
      TableColumnWidth a,
      TableColumnWidth b,
      }
    ) =>
      MinColumnWidth(
      a,
      b,
    ),
);
var _tableCellVerticalAlignment = MXFunctionInvoke(
    "TableCellVerticalAlignment",
    ({String name, int index}) => MXTableCellVerticalAlignment.parse(name, index),
  );
var _renderTable = MXFunctionInvoke(
    "RenderTable",
    (
      {
      int columns,
      int rows,
      dynamic columnWidths,
      TableColumnWidth defaultColumnWidth,
      TextDirection textDirection,
      TableBorder border,
      dynamic rowDecorations,
      ImageConfiguration configuration,
      TableCellVerticalAlignment defaultVerticalAlignment = TableCellVerticalAlignment.top,
      TextBaseline textBaseline,
      dynamic children,
      }
    ) =>
      RenderTable(
      columns: columns,
      rows: rows,
      columnWidths: toMapT<int, TableColumnWidth>(columnWidths),
      defaultColumnWidth: defaultColumnWidth,
      textDirection: textDirection,
      border: border,
      rowDecorations: toListT<Decoration>(rowDecorations),
      configuration: configuration,
      defaultVerticalAlignment: defaultVerticalAlignment,
      textBaseline: textBaseline,
      children: toListT<List<RenderBox>>(children),
    ),
);
class MXTableCellVerticalAlignment {
  static TableCellVerticalAlignment parse(String name, int index) {
    switch(name) {
      case 'TableCellVerticalAlignment.top': 
       return TableCellVerticalAlignment.top;
      case 'TableCellVerticalAlignment.middle': 
       return TableCellVerticalAlignment.middle;
      case 'TableCellVerticalAlignment.bottom': 
       return TableCellVerticalAlignment.bottom;
      case 'TableCellVerticalAlignment.baseline': 
       return TableCellVerticalAlignment.baseline;
      case 'TableCellVerticalAlignment.fill': 
       return TableCellVerticalAlignment.fill;
    }
    return null;
  }
}
