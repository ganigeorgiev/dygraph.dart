@JS()
library dygraph.drag_context;

import 'package:js/js.dart';

import 'typedefs.dart';

/// Generic chart interaction context.
@JS()
@anonymous
class DygraphDragContext {
  external factory DygraphDragContext({
    bool isZooming = false,
    bool isPanning = false,
    bool is2DPan = false,
    num dragStartX,
    num dragStartY,
    num dragEndX,
    num dragEndY,
    num dragDirection,
    num prevEndX,
    num prevEndY,
    num prevDragDirection,
    bool cancelNextDblclick = false,
    num initialLeftmostDate,
    num xUnitsPerPixel,
    num dateRange,
    num px = 0,
    num py = 0,
    List boundedDates,
    List boundedValues,
    DygraphIframeTarp tarp,
    InteractionModelFunc initializeMouseDown,
    Function destroy,
  });

  /// Tracks whether the mouse is down right now
  ///
  /// Default: `false`
  external bool get isZooming;
  external set isZooming(bool v);

  /// Is this drag part of a pan?
  ///
  /// Default: `false`
  external bool get isPanning;
  external set isPanning(bool v);

  /// If so, is that pan 1- or 2-dimensional?
  ///
  /// Default: `false`
  external bool get is2DPan;
  external set is2DPan(bool v);

  /// Drag start X-axis pixel coordinates.
  ///
  /// Default: `null`
  external num get dragStartX;
  external set dragStartX(num v);

  /// Drag start Y-axis pixel coordinates.
  ///
  /// Default: `null`
  external num get dragStartY;
  external set dragStartY(num v);

  /// Drag start X-axis pixel coordinates.
  ///
  /// Default: `null`
  external num get dragEndX;
  external set dragEndX(num v);

  /// Drag end Y-axis pixel coordinates.
  ///
  /// Default: `null`
  external num get dragEndY;
  external set dragEndY(num v);

  /// Indicates the current drag direction.
  ///
  /// Default: `null`
  external num get dragDirection;
  external set dragDirection(num v);

  /// Previous drag end X-axis pixel coordinates.
  ///
  /// Default: `null`
  external num get prevEndX;
  external set prevEndX(num v);

  /// Previous drag end Y-axis pixel coordinates.
  ///
  /// Default: `null`
  external num get prevEndY;
  external set prevEndY(num v);

  /// Previous drag direction.
  ///
  /// Default: `null`
  external num get prevDragDirection;
  external set prevDragDirection(num v);

  /// Disable zooming out if panning.
  ///
  /// Default: `false`
  external bool get cancelNextDblclick;
  external set cancelNextDblclick(bool v);

  /// The value on the left side of the graph when a pan operation starts.
  ///
  /// Default: `null`
  external num get initialLeftmostDate;
  external set initialLeftmostDate(num v);

  /// The number of units each pixel spans (this won't be valid for log scales).
  ///
  /// Default: `null`
  external num get xUnitsPerPixel;
  external set xUnitsPerPixel(num v);

  /// The range in second/value units that the viewport encompasses during a panning operation.
  ///
  /// Default: `null`
  external num get dateRange;
  external set dateRange(num v);

  /// Top corner of the canvas, in DOM coords.
  ///
  /// Default: `0`
  external num get px;
  external set px(num v);

  /// Left corner of the canvas, in DOM coords.
  ///
  /// Default: `0`
  external num get py;
  external set py(num v);

  /// Values for use with panEdgeFraction, which limit how far outside the
  /// graph's data boundaries it can be panned (`[minDate, maxDate]`).
  ///
  /// Default: `null`
  external List get boundedDates;
  external set boundedDates(List v);

  /// Values for use with panEdgeFraction, which limit how far outside the
  /// graph's data boundaries it can be panned (`[minValue, maxValue]`).
  ///
  /// Default: `null`
  external List get boundedValues;
  external set boundedValues(List v);

  /// We cover iframes during mouse interactions.
  ///
  /// Default: `IframeTarp`
  external DygraphIframeTarp get tarp;
  external set tarp(DygraphIframeTarp v);

  /// We cover iframes during mouse interactions.
  ///
  /// Default: `IframeTarp`
  external InteractionModelFunc get initializeMouseDown;
  external set initializeMouseDown(InteractionModelFunc v);

  external Function get destroy;
  external set destroy(Function v);
}

@JS()
@anonymous
class DygraphIframeTarp {
  external factory DygraphIframeTarp({List tarps});

  /// Tracks whether the mouse is down right now
  ///
  /// Default: `false`
  external List get tarps;
  external set tarps(List v);

  /// Find all the iframes in the document and cover them with high z-index
  /// transparent divs.
  external void cover();

  /// Remove all the iframe covers. You should call this in a mouseup handler.
  external void uncover();
}
