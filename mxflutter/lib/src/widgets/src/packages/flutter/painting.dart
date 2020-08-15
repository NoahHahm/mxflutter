//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'src/painting/alignment.dart';
import 'src/painting/basic_types.dart';
import 'src/painting/beveled_rectangle_border.dart';
import 'src/painting/binding.dart';
import 'src/painting/border_radius.dart';
import 'src/painting/borders.dart';
import 'src/painting/box_border.dart';
import 'src/painting/box_decoration.dart';
import 'src/painting/box_fit.dart';
import 'src/painting/box_shadow.dart';
import 'src/painting/circle_border.dart';
import 'src/painting/clip.dart';
import 'src/painting/colors.dart';
import 'src/painting/continuous_rectangle_border.dart';
import 'src/painting/debug.dart';
import 'src/painting/decoration.dart';
import 'src/painting/decoration_image.dart';
import 'src/painting/edge_insets.dart';
import 'src/painting/flutter_logo.dart';
import 'src/painting/fractional_offset.dart';
import 'src/painting/geometry.dart';
import 'src/painting/gradient.dart';
import 'src/painting/image_cache.dart';
import 'src/painting/image_decoder.dart';
import 'src/painting/image_provider.dart';
import 'src/painting/image_resolution.dart';
import 'src/painting/image_stream.dart';
import 'src/painting/inline_span.dart';
import 'src/painting/matrix_utils.dart';
import 'src/painting/notched_shapes.dart';
import 'src/painting/paint_utilities.dart';
import 'src/painting/placeholder_span.dart';
import 'src/painting/rounded_rectangle_border.dart';
import 'src/painting/shader_warm_up.dart';
import 'src/painting/shape_decoration.dart';
import 'src/painting/stadium_border.dart';
import 'src/painting/strut_style.dart';
import 'src/painting/text_painter.dart';
import 'src/painting/text_span.dart';
import 'src/painting/text_style.dart';

Map<String, MXFunctionInvoke> registerPaintingLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerAlignmentSeries());
  m.addAll(registerBasicTypesSeries());
  m.addAll(registerBeveledRectangleBorderSeries());
  m.addAll(registerBindingSeries());
  m.addAll(registerBorderRadiusSeries());
  m.addAll(registerBordersSeries());
  m.addAll(registerBoxBorderSeries());
  m.addAll(registerBoxDecorationSeries());
  m.addAll(registerBoxFitSeries());
  m.addAll(registerBoxShadowSeries());
  m.addAll(registerCircleBorderSeries());
  m.addAll(registerClipSeries());
  m.addAll(registerColorsSeries());
  m.addAll(registerContinuousRectangleBorderSeries());
  m.addAll(registerDebugSeries());
  m.addAll(registerDecorationSeries());
  m.addAll(registerDecorationImageSeries());
  m.addAll(registerEdgeInsetsSeries());
  m.addAll(registerFlutterLogoSeries());
  m.addAll(registerFractionalOffsetSeries());
  m.addAll(registerGeometrySeries());
  m.addAll(registerGradientSeries());
  m.addAll(registerImageCacheSeries());
  m.addAll(registerImageDecoderSeries());
  m.addAll(registerImageProviderSeries());
  m.addAll(registerImageResolutionSeries());
  m.addAll(registerImageStreamSeries());
  m.addAll(registerInlineSpanSeries());
  m.addAll(registerMatrixUtilsSeries());
  m.addAll(registerNotchedShapesSeries());
  m.addAll(registerPaintUtilitiesSeries());
  m.addAll(registerPlaceholderSpanSeries());
  m.addAll(registerRoundedRectangleBorderSeries());
  m.addAll(registerShaderWarmUpSeries());
  m.addAll(registerShapeDecorationSeries());
  m.addAll(registerStadiumBorderSeries());
  m.addAll(registerStrutStyleSeries());
  m.addAll(registerTextPainterSeries());
  m.addAll(registerTextSpanSeries());
  m.addAll(registerTextStyleSeries());
  return m;
}
