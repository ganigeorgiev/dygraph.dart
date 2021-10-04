// ignore_for_file: non_constant_identifier_names, avoid_positional_boolean_parameters

@JS()
library dygraph;

import 'dart:html';

import 'package:js/js.dart';

import 'annotation.dart';
import 'base.dart';
import 'drag_context.dart';
import 'interaction_model.dart';
import 'options.dart';

/// Dygraph chart instance.
@JS()
class Dygraph {
  external factory Dygraph(
    Element? div,
    dynamic /* string (URL of CSV or CSV), GViz DataTable or 2D Array */ file, [
    DygraphOptions options,
  ]);

  // Used for initializing annotation CSS rules only once.
  external static bool get addedAnnotationCSS;

  external static DygraphInteractionModel get defaultInteractionModel;

  external static DygraphInteractionModel get nonInteractiveModel;

  external DygraphPointType get PointType;

  external static Map<String, dynamic> get Plugins;

  /// Installed plugins, in order of precedence (most-general to most-specific).
  external static List get PLUGINS;

  external static String get NAME;
  external static String get VERSION;

  // Various default values
  external static num get DEFAULT_ROLL_PERIOD;
  external static num get DEFAULT_WIDTH;
  external static num get DEFAULT_HEIGHT;

  // For max 60 Hz. animation:
  external static num get ANIMATION_STEPS;
  external static num get ANIMATION_DURATION;

  /// Called in response to an interaction model operation that
  /// should start the default panning behavior.
  ///
  /// It's used in the default callback for "mousedown" operations.
  /// Custom interaction model builders can use it to provide the default
  /// panning behavior.
  external static void startPan(
    // the event object which led to the startPan call
    Event e,
    // the dygraph on which to act
    Dygraph dygraph,
    // the dragging context object (with dragStartX/dragStartY/etc. properties).
    // (this function modifies the context!!!)
    DygraphDragContext context,
  );

  /// Called in response to an interaction model operation that
  /// responds to an event that starts zooming.
  ///
  /// It's used in the default callback for "mousedown" operations.
  /// Custom interaction model builders can use it to provide the default
  /// zooming behavior.
  external static void startZoom(
    // the event object which led to the startZoom call
    Event e,
    // the dygraph on which to act
    Dygraph dygraph,
    // the dragging context object (with dragStartX/dragStartY/etc. properties).
    // (this function modifies the context!!!)
    DygraphDragContext context,
  );

  /// Called in response to an interaction model operation that
  /// responds to an event that pans the view.
  ///
  /// It's used in the default callback for "mousemove" operations.
  /// Custom interaction model builders can use it to provide the default
  /// panning behavior.
  external static void movePan(
    // the event object which led to the movePan call
    Event e,
    // the dygraph on which to act
    Dygraph dygraph,
    // the dragging context object (with dragStartX/dragStartY/etc. properties).
    // (this function modifies the context!!!)
    DygraphDragContext context,
  );

  /// Called in response to an interaction model operation that
  /// responds to an event that defines zoom boundaries.
  ///
  /// It's used in the default callback for "mousemove" operations.
  /// Custom interaction model builders can use it to provide the default
  /// zooming behavior.
  external static void moveZoom(
    // the event object which led to the moveZoom call
    Event e,
    // the dygraph on which to act
    Dygraph dygraph,
    // the dragging context object (with dragStartX/dragStartY/etc. properties).
    // (this function modifies the context!!!)
    DygraphDragContext context,
  );

  /// Called in response to an interaction model operation that
  /// responds to an event that ends panning.
  ///
  /// It's used in the default callback for "mouseup" operations.
  /// Custom interaction model builders can use it to provide the default
  /// panning behavior.
  external static void endPan(
    // the event object which led to the endPan call
    Event e,
    // the dygraph on which to act
    Dygraph dygraph,
    // the dragging context object (with dragStartX/dragStartY/etc. properties).
    // (this function modifies the context!!!)
    DygraphDragContext context,
  );

  /// Called in response to an interaction model operation that
  /// responds to an event that performs a zoom based on previously defined
  /// bounds..
  ///
  /// It's used in the default callback for "mouseup" operations.
  /// Custom interaction model builders can use it to provide the default
  /// zooming behavior.
  external static void endZoom(
    // the event object which led to the endZoom call
    Event e,
    // the dygraph on which to act
    Dygraph dygraph,
    // the dragging context object (with dragStartX/dragStartY/etc. properties).
    // (this function modifies the context!!!)
    DygraphDragContext context,
  );

  /// Numeric linear values ticker function.
  external static List numericLinearTicks(
    num min,
    num max,
    num pixels, [
    Function(String v) opts,
    Dygraph dygraph,
    List vals,
  ]);

  /// Numeric values ticker function.
  external static List numericTicks(
    num min,
    num max,
    num pixels, [
    Function(String v) opts,
    Dygraph dygraph,
    List vals,
  ]);

  /// Date values ticker function.
  external static List dateTicker(
    num min,
    num max,
    num pixels, [
    Function(String v) opts,
    Dygraph dygraph,
    List vals,
  ]);

  /// Adjusts the number of points in the rolling average.
  external void adjustRoll(int length);

  /// Return the list of annotations.
  external List annotations();

  /// Clears the current selection
  /// (i.e. points that were highlighted by moving the mouse over the chart).
  external void clearSelection();

  /// Detach DOM elements in the dygraph and null out all data references.
  external void destroy();

  /// Convert a mouse event to DOM coordinates relative to the graph origin.
  external List eventToDomCoords(Event event);

  /// Get the current graph's area object.
  external DygraphArea getArea();

  /// Return the list of colors.
  external List getColors();

  /// Returns the name of the currently-highlighted series.
  external String getHighlightSeries();

  /// Get the list of label names for this graph.
  external List getLabels();

  /// Returns the current value for an option, as set in the constructor or via [updateOptions].
  external dynamic getOption(String name, [String optSeriesName]);

  /// Returns a few attributes of a series, i.e. its color, its visibility,
  /// which axis it's assigned to, and its column in the original data.
  /// Returns `null` if the series does not exist.
  /// Otherwise, returns an object with `column`, `visibility`, `color` and `axis` properties.
  /// The `axis` property will be set to 1 for y1 and 2 for y2.
  /// The `column` property can be fed back into `getValue(row, column)` to get values for this series.
  external DygraphPropertiesForSeries getPropertiesForSeries(String seriesName);

  /// Find the row number corresponding to the given x-value.
  /// Returns `null`  if there is no such x-value in the data.
  /// If there are multiple rows with the same x-value, this will return the first one.
  external int getRowForX(int xVal);

  /// Returns the number of the currently selected row.
  /// To get data for this row, you can use the [getValue] method.
  external int getSelection();

  /// Returns the value in the given row and column.
  external dynamic getValue(int row, int col);

  /// Get the index of a series (column) given its name.
  /// The first column is the x-axis, so the data series start with index 1.
  external int indexFromSetName(String name);

  /// Returns true if the currently-highlighted series was locked via
  /// `setSelection(..., seriesName, true)`.
  external bool isSeriesLocked();

  /// Returns the zoomed status of the chart for one or both axes.
  ///
  /// Axis is an optional parameter. Can be set to `x` or `y`.
  ///
  /// The zoomed status for an axis is set whenever a user zooms using the mouse
  /// or when the dateWindow or valueRange are updated. Double-clicking or calling
  /// `resetZoom()` resets the zoom status for the chart.
  external bool isZoomed([String axis]);

  /// Returns information about the Dygraph object, including its containing ID.
  @override
  external String toString();

  /// Returns the number of y-axes on the chart.
  external int numAxes();

  /// Returns the number of columns (including the independent variable).
  external int numColumns();

  /// Returns the number of rows (excluding any header/label row).
  external int numRows();

  /// Trigger a callback when the dygraph has drawn itself and is ready to be manipulated.
  external void ready(Function(Dygraph dygraph) callback);

  /// Reset the zoom to the original view coordinates.
  /// This is the same as double-clicking on the graph.
  external void resetZoom();

  /// Resizes the dygraph. If no parameters are specified, resizes to fill the
  /// containing div (which has presumably changed size since the dygraph was
  /// instantiated. If the width/height are specified, the div will be resized.
  ///
  /// This is far more efficient than destroying and re-instantiating a
  /// Dygraph, since it doesn't have to reparse the underlying data.
  external void resize([num width, num height]);

  /// Returns the current rolling period, as set by the user or an option.
  external int rollPeriod();

  /// Update the list of annotations and redraw the chart.
  /// See dygraphs.com/annotations.html for more info on how to use annotations.
  external void setAnnotations(
    List<DygraphAnnotation> annotations, [
    bool suppressDraw,
  ]);

  /// Manually set the selected points and display information about them in the
  /// legend. The selection can be cleared using [clearSelection()] and queried
  /// using [getSelection()].
  ///
  /// To set a selected series but not a selected point, call [setSelection] with
  /// `row=false` and the selected series name.
  external void setSelection(dynamic row, [String seriesName, bool locked]);

  /// Changes the visibility of one or more series.
  ///
  /// [idx] could be:
  /// - index or an array of series indices
  /// - a boolean array of visibility states by index
  /// - an object mapping series numbers, as keys, to visibility state (boolean values)
  external void setVisibility(dynamic idx, bool visible);

  /// Convert from canvas/div coords to data coordinates.
  /// If specified, do this conversion for the coordinate system of a particular
  /// axis. Uses the first axis by default.
  /// Returns a two-element array: [X, Y].
  ///
  /// Note: use [toDataXCoord] instead of [toDataCoords(x, null)] and use
  /// [toDataYCoord] instead of [toDataCoords(null, y, axis)].
  external List toDataCoords([num x, num y, num axis]);

  /// Convert from canvas/div x coordinate to data coordinate.
  ///
  /// If [x] is null, this returns `null`.
  external num toDataXCoord([num x]);

  /// Convert from canvas/div y coord to value.
  ///
  /// If [y] is `null`, this returns `null`.
  /// if axis is `null`, this uses the first axis.
  external num toDataYCoord([num y, num axis]);

  /// Convert from data coordinates to canvas/div X/Y coordinates.
  /// If specified, do this conversion for the coordinate system of a particular
  /// axis. Uses the first axis by default.
  /// Returns a two-element array: [X, Y]
  ///
  /// Note: use [toDomXCoord] instead of [toDomCoords(x, null)] and use
  /// [toDomYCoord] instead of [toDomCoords(null, y, axis)].
  external List toDomCoords([num x, num y, num axis]);

  /// Convert from data x coordinates to canvas/div X coordinate.
  /// If specified, do this conversion for the coordinate system of a particular axis.
  ///
  /// Returns a single value or `null` if x is `null`.
  external num toDomXCoord([num x]);

  /// Convert from data x coordinates to canvas/div Y coordinate and optional
  /// axis. Uses the first axis by default.
  ///
  /// Returns a single value or `null` if y is `null`.
  external num toDomYCoord([num y, num axis]);

  /// Converts an x value to a percentage from the left to the right of
  /// the drawing area.
  ///
  /// If the coordinate represents a value visible on the canvas, then
  /// the value will be between 0 and 1, where 0 is the left of the canvas.
  /// However, this method will return values outside the range, as
  /// values can fall outside the canvas.
  ///
  /// If x is `null`, this returns `null`.
  external num toPercentXCoord([num x]);

  /// Converts a y for an axis to a percentage from the top to the
  /// bottom of the drawing area.
  ///
  /// If the coordinate represents a value visible on the canvas, then
  /// the value will be between 0 and 1, where 0 is the top of the canvas.
  /// However, this method will return values outside the range, as
  /// values can fall outside the canvas.
  ///
  /// If y is `null`, this returns `null`.
  /// if axis is `null`, this uses the first axis.
  external num toPercentYCoord([num y, num axis]);

  /// Changes various properties of the graph. These can include:
  /// - data: changes the source data for the graph
  /// - errorBars: changes whether the data contains stddev
  ///
  /// There's a huge variety of options that can be passed to this method.
  /// For a full list, see http://dygraphs.com/options.html.
  external void updateOptions(DygraphOptions options, [bool blockRedraw]);

  /// Returns a boolean array of visibility statuses.
  external List visibility();

  /// Returns the lower- and upper-bound x-axis values of the data set.
  external List xAxisExtremes();

  /// Returns the currently-visible x-range. This can be affected by zooming,
  /// panning or a call to [updateOptions].
  ///
  /// Returns a two-element array: [left, right].
  ///
  /// If the Dygraph has dates on the x-axis, these will be millis since epoch.
  external List xAxisRange();

  /// Returns the lower- and upper-bound y-axis values for each axis. These are
  /// the ranges you'll get if you double-click to zoom out or call [resetZoom].
  ///
  /// The return value is an array of [low, high] tuples, one for each y-axis.
  external List yAxisExtremes();

  /// Returns the currently-visible y-range for an axis. This can be affected by
  /// zooming, panning or a call to [updateOptions]. Axis indices are zero-based.
  /// If called with no arguments, returns the range of the first axis.
  ///
  /// Returns a two-element array: [bottom, top].
  external List yAxisRange([num idx]);

  /// Returns the currently-visible y-ranges for each axis.
  /// This can be affected by zooming, panning, calls to [updateOptions], etc.
  ///
  /// Returns an array of [bottom, top] pairs, one for each y-axis.
  external List yAxisRanges();

  /// Given canvas X,Y coordinates, find the closest point.
  ///
  /// This finds the individual data point across all visible series
  /// that's closest to the supplied DOM coordinates using the standard
  /// Euclidean X,Y distance.
  external DygraphClosestPointResult findClosestPoint(num domX, num domY);
}
