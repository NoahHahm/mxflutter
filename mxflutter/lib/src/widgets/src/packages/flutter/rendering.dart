//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'src/rendering/animated_size.dart';
import 'src/rendering/layer.dart';
import 'src/rendering/custom_layout.dart';
import 'src/rendering/custom_paint.dart';
import 'src/rendering/debug_overflow_indicator.dart';
import 'src/rendering/editable.dart';
import 'src/rendering/error.dart';
import 'src/rendering/flex.dart';
import 'src/rendering/flow.dart';
import 'src/rendering/image.dart';
import 'src/rendering/list_body.dart';
import 'src/rendering/list_wheel_viewport.dart';
import 'src/rendering/mouse_tracking.dart';
import 'src/rendering/paragraph.dart';
import 'src/rendering/performance_overlay.dart';
import 'src/rendering/platform_view.dart';
import 'src/rendering/proxy_box.dart';
import 'src/rendering/proxy_sliver.dart';
import 'src/rendering/rotated_box.dart';
import 'src/rendering/shifted_box.dart';
import 'src/rendering/sliver.dart';
import 'src/rendering/sliver_fill.dart';
import 'src/rendering/sliver_fixed_extent_list.dart';
import 'src/rendering/sliver_grid.dart';
import 'src/rendering/sliver_list.dart';
import 'src/rendering/sliver_multi_box_adaptor.dart';
import 'src/rendering/sliver_padding.dart';
import 'src/rendering/sliver_persistent_header.dart';
import 'src/rendering/stack.dart';
import 'src/rendering/table.dart';
import 'src/rendering/table_border.dart';
import 'src/rendering/texture.dart';
import 'src/rendering/tweens.dart';
import 'src/rendering/viewport_offset.dart';
import 'src/rendering/wrap.dart';


Map<String, MXFunctionInvoke> registerRenderingSeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerAnimatedSizeSeries());
  m.addAll(registerLayerSeries());
  m.addAll(registerCustomLayoutSeries());
  m.addAll(registerCustomPaintSeries());
  m.addAll(registerDebugOverflowIndicatorSeries());
  m.addAll(registerEditableSeries());
  m.addAll(registerErrorSeries());
  m.addAll(registerFlexSeries());
  m.addAll(registerFlowSeries());
  m.addAll(registerImageSeries());
  m.addAll(registerListBodySeries());
  m.addAll(registerListWheelViewportSeries());
  m.addAll(registerMouseTrackingSeries());
  m.addAll(registerParagraphSeries());
  m.addAll(registerPerformanceOverlaySeries());
  m.addAll(registerPlatformViewSeries());
  m.addAll(registerProxyBoxSeries());
  m.addAll(registerProxySliverSeries());
  m.addAll(registerRotatedBoxSeries());
  m.addAll(registerShiftedBoxSeries());
  m.addAll(registerSliverSeries());
  m.addAll(registerSliverFillSeries());
  m.addAll(registerSliverFixedExtentListSeries());
  m.addAll(registerSliverGridSeries());
  m.addAll(registerSliverListSeries());
  m.addAll(registerSliverMultiBoxAdaptorSeries());
  m.addAll(registerSliverPaddingSeries());
  m.addAll(registerSliverPersistentHeaderSeries());
  m.addAll(registerStackSeries());
  m.addAll(registerTableSeries());
  m.addAll(registerTableBorderSeries());
  m.addAll(registerTextureSeries());
  m.addAll(registerTweensSeries());
  m.addAll(registerViewportOffsetSeries());
  m.addAll(registerWrapSeries());
  return m;
}
