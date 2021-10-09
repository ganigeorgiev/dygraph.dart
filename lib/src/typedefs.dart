import 'dart:html';

import 'annotation.dart';
import 'base.dart';
import 'drag_context.dart';
import 'dygraph.dart';
import 'legend_formatter.dart';

typedef GenericEventCallbackFunc = Function(Event e);

typedef InteractionModelFunc = Function(
  // the related interaction event (mouse, touch, scroll, etc.)
  Event event,
  // the reference graph
  Dygraph dygraph,
  // the dragging context object
  DygraphDragContext context,
);

typedef AnnotationCallbackFunc = void Function(
  // the annotation left
  DygraphAnnotation annotation,
  // the point associated with the annotation
  DygraphPointType point,
  // the reference graph
  Dygraph dygraph,
  // the mouse event
  MouseEvent event,
);

typedef DrawPointCallbackFunc = void Function(
  // the reference graph
  Dygraph dygraph,
  // the name of the series
  String seriesName,
  // the canvas to draw on
  CanvasRenderingContext2D canvasContext,
  // center x coordinate
  num cx,
  // center y coordinate
  num cy,
  // series color
  String color,
  // the radius of the image
  num pointSize,
);

typedef AxisLabelFormatterFunc = String Function(
  // either a number (for a numeric axis) or a Date object (for a date axis)
  dynamic numOrDate,
  // specifies how fine-grained the axis is. e.g. `DygraphGranularity.WEEKLY`
  int granularity,
  // a function which provides access to various options on the dygraph, e.g. opts('labelsKMB')
  Function opts,
  // the referenced graph
  Dygraph dygraph,
);

typedef ClickCallbackFunc = void Function(
  // the event object for the click
  Event e,
  // the x value that was clicked (for dates, this is milliseconds since epoch)
  dynamic x,
  // the closest points along that date. See Point properties for details
  List points,
);

typedef SyncCallbackFunc = void Function(
  // the graph that is synced
  Dygraph dygraph,
);

typedef DrawCallbackFunc = void Function(
  // the graph being drawn
  Dygraph dygraph,
  // `true` if this is the initial draw, `false` for subsequent draws
  bool isInitial,
);

typedef PointClickCallbackFunc = void Function(
  // the event object for the click
  Event e,
  // the point that was clicked See Point properties for details
  DygraphPointType point,
);

typedef HighlightCallbackFunc = void Function(
  // the JavaScript mousemove event
  Event e,
  // the x-coordinate of the highlighted points
  dynamic x,
  // an array of highlighted points: [ {name: 'series', yval: y-value}, … ]
  List points,
  // integer index of the highlighted row in the data table, starting from 0
  int row, [
  // name of the highlighted series, only present if highlightSeriesOpts is set
  String seriesName,
]);

typedef UnderlayCallbackFunc = void Function(
  // the canvas drawing context on which to draw
  dynamic context,
  // an object with {x,y,w,h} properties describing the drawing area
  DygraphArea area,
  // the reference graph
  Dygraph dygraph,
  // the reference graph (passed again for bc; see https://github.com/danvk/dygraphs/blob/da2a028fc41e5573868358b3d9eda9826211d217/src/dygraph.js#L2327)
  Dygraph dygraphDeprecated,
);

typedef ZoomCallbackFunc = void Function(
  // milliseconds since epoch
  num minDate,
  // milliseconds since epoch.
  num maxDate,
  // is an array of [bottom, top] pairs, one for each y-axis.
  List yRanges,
);

typedef LegendFormatterFunc = String Function(DygraphLegendFormatterData data);

typedef XValueParserFunc = num Function(String str);

typedef TickerFunc = List Function(
  num min,
  num max,
  num pixels, [
  Function(String v) opts,
  Dygraph dygraph,
  List? vals,
]);

typedef ValueFormatterFunc = dynamic Function(
  // The value to be formatted. This is always a number. For date axes, it's millis since epoch.
  num numOrMillis,
  // This is a function you can call to access various options (e.g. opts('labelsKMB')).
  // It returns per-axis values for the option when available.
  dynamic opts,
  // The name of the series from which the point came, e.g. 'X', 'Y', 'A', etc.
  String? seriesName,
  // The dygraph object for which the formatting is being done
  Dygraph? dygraph,
  // The row of the data from which this point comes. g.getValue(row, 0) will return the x-value for this point.
  num row,
  // The column of the data from which this point comes. g.getValue(row, col) will return the original y-value for this point.
  // This can be used to get the full confidence interval for the point, or access un-rolled values for the point.
  num col,
);
