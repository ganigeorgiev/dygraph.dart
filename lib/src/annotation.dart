@JS()
library dygraph.annotation;

import 'package:js/js.dart';

import 'typedefs.dart';

/// Dygraphs lets you add annotations (markers) to individual points on your chart.
/// These markers have a short bit of text or an icon that's displayed over the chart,
/// plus a longer description that appears when you hover over them.
@JS()
@anonymous
class DygraphAnnotation {
  external factory DygraphAnnotation({
    String series,
    dynamic x,
    String shortText,
    String text,
    String icon,
    num width,
    num height,
    String cssClass,
    num tickHeight,
    num tickWidth,
    String tickColor,
    bool attachAtBottom,
    AnnotationCallbackFunc clickHandler,
    AnnotationCallbackFunc mouseOverHandler,
    AnnotationCallbackFunc mouseOutHandler,
    AnnotationCallbackFunc dblClickHandler,
  });

  /// The name of the series to which the annotated point belongs.
  external String get series;
  external set series(String v);

  /// The x value of the point.
  /// This should be the same as the value you specified in your CSV file, e.g. "2010-09-13".
  external dynamic get x;
  external set x(dynamic v);

  /// Text that will appear on the annotation's flag.
  ///
  /// Default: `null`
  external String get shortText;
  external set shortText(String v);

  /// A longer description of the annotation which will appear when the user hovers over it.
  ///
  /// Default: `null`
  external String get text;
  external set text(String v);

  /// Specify in place of `shortText` to mark the annotation with an image rather than text.
  /// If you specify this, you must specify `width` and `height`.
  ///
  /// Default: `null`
  external String get icon;
  external set icon(String v);

  /// Width (in pixels) of the annotation flag or icon.
  ///
  /// Default: `16`
  external num get width;
  external set width(num v);

  /// Height (in pixels) of the annotation flag or icon.
  ///
  /// Default: `16`
  external num get height;
  external set height(num v);

  /// CSS class to use for styling the annotation.
  ///
  /// Default: `null`
  external String get cssClass;
  external set cssClass(String v);

  /// Height of the tick mark (in pixels) connecting the point to its flag or icon.
  ///
  /// Default: `6`
  external num get tickHeight;
  external set tickHeight(num v);

  /// Width of the tick mark connecting the point to its flag or icon.
  ///
  /// Default: `0.1`
  external num get tickWidth;
  external set tickWidth(num v);

  /// Color of the tick mark connecting the point to its flag or icon.
  ///
  /// Default: inherit from the series
  external String get tickColor;
  external set tickColor(String v);

  /// If `true`, attach annotations to the x-axis, rather than to actual points.
  ///
  /// Default: `null`
  external bool get attachAtBottom;
  external set attachAtBottom(bool v);

  /// Per-point handler similar to the global `annotationClickHandler`.
  external AnnotationCallbackFunc get clickHandler;
  external set clickHandler(AnnotationCallbackFunc v);

  /// Per-point handler similar to the global `annotationMouseOverHandler`.
  external AnnotationCallbackFunc get mouseOverHandler;
  external set mouseOverHandler(AnnotationCallbackFunc v);

  /// Per-point handler similar to the global `annotationMouseOutHandler`.
  external AnnotationCallbackFunc get mouseOutHandler;
  external set mouseOutHandler(AnnotationCallbackFunc v);

  /// Per-point handler similar to the global `annotationDblClickHandler`.
  external AnnotationCallbackFunc get dblClickHandler;
  external set dblClickHandler(AnnotationCallbackFunc v);
}
