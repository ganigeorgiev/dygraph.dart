// ignore_for_file: non_constant_identifier_names, avoid_positional_boolean_parameters

@JS()
library dygraph.data_handler;

import 'package:js/js.dart';

import 'options.dart';

/// Chart data interface to define a common, generic data format that works for all data structures.
///
/// By default the correct DataHandler is chosen based on the options set.
/// Optionally the user may use this class to provide his own DataHandler (similar to the plugin system).
@JS()
@anonymous
class DygraphDataHandler {
  external factory DygraphDataHandler();

  /// Extracts one series from the raw data (a 2D array) into an array of the unified data format.
  /// This is where undesirable points (i.e. negative values on log scales and
  /// missing values through which we wish to connect lines) are dropped.
  ///
  /// Returns the series in the unified data format where `series[i] = [x,y,{extras}]`.
  external List extractSeries(
    // The raw data passed into dygraphs where rawData[i] = [x,ySeries1,...,ySeriesN].
    dynamic rawData,
    // Index of the series to extract. All other series should be ignored.
    int seriesIndex, [
    // Dygraph options.
    DygraphOptions? options,
  ]);

  /// Converts a series to a Point array.  The resulting point array must be
  /// returned in increasing order of idx property.
  ///
  /// Returns list of points for this series.
  external List seriesToPoints(
    // The series in the unified data format where series[i] = [x,y,{extras}].
    List series,
    // Name of the series.
    String setName,
    // Index offset of the first point, equal to the number of skipped points left of the date window minimum (if any).
    int boundaryIdStart,
  );

  /// Calculates the rolling average of a data set.
  ///
  /// Returns the rolled series.
  external List rollingAverage(
    // The series in the unified data format where series[i] = [x,y,{extras}].
    List series,
    // The number of points over which to average the data.
    int rollPeriod, [
    // Dygraph options.
    DygraphOptions? options,
  ]);

  /// Computes the range of the data series (including confidence intervals).
  ///
  /// Returns the low and high extremes of the series in the given window with the format: [low, high].
  external List getExtremeYValues(
    // The series in the unified data format where series[i] = [x, y, {extras}].
    List series,
    // The x-value range to display with the format: [min, max].
    List dateWindow, [
    // The dygraph options.
    DygraphOptions? options,
  ]);

  /// Callback called for each series after the layouting data has been
  /// calculated before the series is drawn. Here normalized positioning data
  /// should be calculated for the extras of each point.
  external void onLineEvaluated(
    // The points passed to the plotter.
    List points,
    // The axis on which the series will be plotted.
    dynamic axis,
    // Weather or not to use a logscale.
    bool logscale,
  );

  // X-value array index constant for unified data samples.
  external static String get X;

  // Y-value array index constant for unified data samples.
  external static String get Y;

  // Extras-value array index constant for unified data samples.
  external static String get EXTRAS;
}
