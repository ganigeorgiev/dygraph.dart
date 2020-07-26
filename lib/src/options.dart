@JS()
library dygraph.options;

import 'package:js/js.dart';

import 'base.dart';
import 'data_handler.dart';
import 'interaction_model.dart';
import 'typedefs.dart';

/// Main chart options.
///
/// For additional info you could check http://dygraphs.com/options.html.
@JS()
@anonymous
class DygraphOptions {
  external factory DygraphOptions({
    AnnotationCallbackFunc annotationClickHandler,
    AnnotationCallbackFunc annotationDblClickHandler,
    AnnotationCallbackFunc annotationMouseOutHandler,
    AnnotationCallbackFunc annotationMouseOverHandler,
    bool displayAnnotations,
    String axis,
    int axisLabelFontSize,
    AxisLabelFormatterFunc axisLabelFormatter,
    int axisLabelWidth,
    String axisLineColor,
    num axisLineWidth,
    num axisTickSize,
    List dateWindow,
    bool drawAxesAtZero,
    bool drawAxis,
    bool includeZero,
    bool independentTicks,
    bool labelsUTC,
    bool logscale,
    double panEdgeFraction,
    int pixelsPerLabel,
    TickerFunc ticker,
    List valueRange,
    int xAxisHeight,
    num xRangePad,
    num yRangePad,
    bool customBars,
    String delimiter,
    bool errorBars,
    bool fractions,
    XValueParserFunc xValueParser,
    ClickCallbackFunc clickCallback,
    DrawCallbackFunc drawCallback,
    HighlightCallbackFunc highlightCallback,
    PointClickCallbackFunc pointClickCallback,
    UnderlayCallbackFunc underlayCallback,
    GenericEventCallbackFunc unhighlightCallback,
    ZoomCallbackFunc zoomCallback,
    String title,
    num titleHeight,
    num xLabelHeight,
    String xlabel,
    String y2label,
    num yLabelWidth,
    String ylabel,
    DygraphAxes axes,
    List plugins,
    DygraphDataHandler dataHandler,
    dynamic /* string (URL of CSV or CSV), GViz DataTable or 2D Array */ file,
    bool connectSeparatedPoints,
    bool drawGapEdgePoints,
    DrawPointCallbackFunc drawHighlightPointCallback,
    DrawPointCallbackFunc drawPointCallback,
    bool drawPoints,
    bool fillGraph,
    dynamic plotter,
    num pointSize,
    bool stackedGraph,
    String stackedGraphNaNFill,
    bool stepPlot,
    String strokeBorderColor,
    num strokeBorderWidth,
    List strokePattern,
    num strokeWidth,
    List visibility,
    String color,
    double colorSaturation,
    double colorValue,
    List colors,
    double fillAlpha,
    String timingName,
    int rollPeriod,
    num sigma,
    bool wilsonInterval,
    bool drawGrid,
    String gridLineColor,
    List gridLinePattern,
    num gridLineWidth,
    bool animatedZooms,
    bool hideOverlayOnMouseOut,
    int highlightCircleSize,
    num highlightSeriesBackgroundAlpha,
    String highlightSeriesBackgroundColor,
    DygraphOptions highlightSeriesOpts,
    DygraphInteractionModel interactionModel,
    bool showLabelsOnHighlight,
    bool showRoller,
    List labels,
    dynamic /* DOM element or string */ labelsDiv,
    bool labelsSeparateLines,
    bool labelsShowZeroValues,
    String legend,
    LegendFormatterFunc legendFormatter,
    ValueFormatterFunc valueFormatter,
    num height,
    num pixelRatio,
    num rightGap,
    num width,
    double rangeSelectorAlpha,
    num rangeSelectorBackgroundLineWidth,
    String rangeSelectorBackgroundStrokeColor,
    num rangeSelectorForegroundLineWidth,
    String rangeSelectorForegroundStrokeColor,
    num rangeSelectorHeight,
    String rangeSelectorPlotFillColor,
    String rangeSelectorPlotFillGradientColor,
    num rangeSelectorPlotLineWidth,
    String rangeSelectorPlotStrokeColor,
    bool showInRangeSelector,
    bool showRangeSelector,
    dynamic series,
    num digitsAfterDecimal,
    bool labelsKMB,
    bool labelsKMG2,
    int maxNumberWidth,
    int sigFigs,
  });

  /* Annotations
  --------------------------------------------------------------------------- */

  /// If provided, this function is called whenever the user clicks on an annotation.
  ///
  /// Default: `null`
  external AnnotationCallbackFunc get annotationClickHandler;
  external set annotationClickHandler(AnnotationCallbackFunc v);

  /// If provided, this function is called whenever the user double-clicks on an annotation.
  ///
  /// Default: `null`
  external AnnotationCallbackFunc get annotationDblClickHandler;
  external set annotationDblClickHandler(AnnotationCallbackFunc v);

  /// If provided, this function is called whenever the user mouses out of an annotation.
  ///
  /// Default: `null`
  external AnnotationCallbackFunc get annotationMouseOutHandler;
  external set annotationMouseOutHandler(AnnotationCallbackFunc v);

  /// If provided, this function is called whenever the user mouses over an annotation.
  ///
  /// Default: `null`
  external AnnotationCallbackFunc get annotationMouseOverHandler;
  external set annotationMouseOverHandler(AnnotationCallbackFunc v);

  /// Only applies when Dygraphs is used as a GViz chart.
  /// Causes string columns following a data series to be interpreted as annotations on points in that series.
  /// This is the same format used by Google's AnnotatedTimeLine chart.
  ///
  /// Default: `false`
  external bool get displayAnnotations;
  external set displayAnnotations(bool v);

  /* Axis display
  --------------------------------------------------------------------------- */

  /// Set to either 'y1' or 'y2' to assign a series to a y-axis (primary or secondary).
  /// Must be set per-series.
  ///
  /// Default: `null`
  external String get axis;
  external set axis(String v);

  /// Size of the font (in pixels) to use in the axis labels, both x- and y-axis.
  ///
  /// Default: `14`
  external int get axisLabelFontSize;
  external set axisLabelFontSize(int v);

  /// Function to call to format the tick values that appear along an axis.
  /// This is usually set on a per-axis basis.
  ///
  /// Default: Depends on the data type
  external AxisLabelFormatterFunc get axisLabelFormatter;
  external set axisLabelFormatter(AxisLabelFormatterFunc v);

  /// Width (in pixels) of the containing divs for x- and y-axis labels.
  /// For the y-axis, this also controls the width of the y-axis.
  /// Note that for the x-axis, this is independent from [pixelsPerLabel], which controls the spacing between labels.
  ///
  /// Default: `50` (y-axis), `60` (x-axis)
  external int get axisLabelWidth;
  external set axisLabelWidth(int v);

  /// Color of the x- and y-axis lines.
  /// Accepts any value which the HTML canvas strokeStyle attribute understands, e.g. `'black'` or `'rgb(0, 100, 255)'`.
  ///
  /// Default: `black`
  external String get axisLineColor;
  external set axisLineColor(String v);

  /// Thickness (in pixels) of the x- and y-axis lines.
  ///
  /// Default: `0.3`
  external num get axisLineWidth;
  external set axisLineWidth(num v);

  /// The size of the line to display next to each tick mark on x- or y-axes.
  ///
  /// Default: `3.0`
  external num get axisTickSize;
  external set axisTickSize(num v);

  /// Initially zoom in on a section of the graph.
  /// Is of the form [earliest, latest], where earliest/latest are milliseconds since epoch.
  /// If the data for the x-axis is numeric, the values in dateWindow must also be numbers.
  ///
  /// Default: Full range of the input is shown
  external List<num> get dateWindow;
  external set dateWindow(List<num> v);

  /// When set, draw the X axis at the Y=0 position and the Y axis at the X=0 position if those positions are inside the graph's visible area.
  /// Otherwise, draw the axes at the bottom or left graph edge as usual.
  ///
  /// Default: `false`
  external bool get drawAxesAtZero;
  external set drawAxesAtZero(bool v);

  /// Whether to draw the specified axis.
  /// This may be set on a per-axis basis to define the visibility of each axis separately.
  /// Setting this to false also prevents axis ticks from being drawn and reclaims the space for the chart grid/lines.
  ///
  /// Default: `true` for x and y, `false` for y2
  external bool get drawAxis;
  external set drawAxis(bool v);

  /// Usually, dygraphs will use the range of the data plus some padding to set the range of the y-axis.
  /// If this option is set, the y-axis will always include zero, typically as the lowest value.
  /// This can be used to avoid exaggerating the variance in the data
  ///
  /// Default: `false`
  external bool get includeZero;
  external set includeZero(bool v);

  /// Only valid for y and y2, has no effect on x.
  /// This option defines whether the y axes should align their ticks or if they should be independent.
  /// Possible combinations:
  /// 1.) y=true, y2=false (default): y is the primary axis and the y2 ticks are aligned to the the ones of y. (only 1 grid)
  /// 2.) y=false, y2=true: y2 is the primary axis and the y ticks are aligned to the the ones of y2. (only 1 grid)
  /// 3.) y=true, y2=true: Both axis are independent and have their own ticks. (2 grids)
  /// 4.) y=false, y2=false: Invalid configuration causes an error.
  ///
  /// Default: `true` for y, `false` for y2
  external bool get independentTicks;
  external set independentTicks(bool v);

  /// Show date/time labels according to UTC (instead of local time).
  ///
  /// Default: `false`
  external bool get labelsUTC;
  external set labelsUTC(bool v);

  /// When set for the y-axis or x-axis, the graph shows that axis in log scale.
  /// Any values less than or equal to zero are not displayed.
  /// Showing log scale with ranges that go below zero will result in an unviewable graph.
  /// Not compatible with showZero. connectSeparatedPoints is ignored.
  /// This is ignored for date-based x-axes.
  ///
  /// Default: `false`
  external bool get logscale;
  external set logscale(bool v);

  /// A value representing the farthest a graph may be panned, in percent of the display.
  /// For example, a value of 0.1 means that the graph can only be panned 10% passed the edges of the displayed values.
  /// `null` means no bounds.
  ///
  /// Default: `null`
  external double get panEdgeFraction;
  external set panEdgeFraction(double v);

  /// Number of pixels to require between each x- and y-label.
  /// Larger values will yield a sparser axis with fewer ticks.
  /// This is set on a per-axis basis.
  ///
  /// Default: `70` (x-axis) or `30` (y-axes)
  external int get pixelsPerLabel;
  external set pixelsPerLabel(int v);

  /// This lets you specify an arbitrary function to generate tick marks on an axis.
  /// The tick marks are an array of (value, label) pairs.
  /// The built-in functions go to great lengths to choose good tick marks so,
  /// if you set this option, you'll most likely want to call one of them and modify the result.
  /// See dygraph-tickers.js for an extensive discussion. This is set on a per-axis basis.
  ///
  /// Default: `Dygraph.dateTicker` or `Dygraph.numericTicks`
  external TickerFunc get ticker;
  external set ticker(TickerFunc v);

  /// Explicitly set the vertical range of the graph to [low, high].
  /// This may be set on a per-axis basis to define each y-axis separately.
  /// If either limit is unspecified, it will be calculated automatically
  /// (e.g. [null, 30] to automatically calculate just the lower bound).
  ///
  /// Default: Full range of the input is shown
  external List<num> get valueRange;
  external set valueRange(List<num> v);

  /// Height, in pixels, of the x-axis.
  /// If not set explicitly, this is computed based on axisLabelFontSize and axisTickSize.
  ///
  /// Default: `null`
  external int get xAxisHeight;
  external set xAxisHeight(int v);

  /// Add the specified amount of extra space (in pixels) around the X-axis value range to ensure points at the edges remain visible.
  ///
  /// Default: `0`
  external num get xRangePad;
  external set xRangePad(num v);

  /// If set, add the specified amount of extra space (in pixels) around the Y-axis value range to ensure points at the edges remain visible.
  /// If unset, use the traditional Y padding algorithm.
  ///
  /// Default: `null`
  external num get yRangePad;
  external set yRangePad(num v);

  /* CSV parsing
  --------------------------------------------------------------------------- */

  /// When set, parse each CSV cell as "low;middle;high".
  /// Error bars will be drawn for each point between low and high, with the series itself going through middle.
  ///
  /// Default: `false`
  external bool get customBars;
  external set customBars(bool v);

  /// The delimiter to look for when separating fields of a CSV file.
  /// Setting this to a tab is not usually necessary, since tab-delimited data is auto-detected.
  ///
  /// Default: `''`
  external String get delimiter;
  external set delimiter(String v);

  /// Does the data contain standard deviations? Setting this to true alters the input format.
  ///
  /// Default: `false`
  external bool get errorBars;
  external set errorBars(bool v);

  /// When set, attempt to parse each cell in the CSV file as "a/b", where a and b are integers.
  /// The ratio will be plotted. This allows computation of Wilson confidence intervals.
  ///
  /// Default: `false`
  external bool get fractions;
  external set fractions(bool v);

  /// A function which parses x-values (i.e. the dependent series).
  /// Must return a number, even when the values are dates.
  /// In this case, millis since epoch are used.
  /// This is used primarily for parsing CSV data.
  /// Dygraphs is slightly more accepting in the dates which it will parse.
  ///
  /// Default: The native JS functions `parseFloat()` or `Date.parse()`
  external XValueParserFunc get xValueParser;
  external set xValueParser(XValueParserFunc v);

  /* Callbacks
  --------------------------------------------------------------------------- */

  /// A function to call when the canvas is clicked.
  ///
  /// Default: `null`
  external ClickCallbackFunc get clickCallback;
  external set clickCallback(ClickCallbackFunc v);

  /// When set, this callback gets called every time the dygraph is drawn.
  /// This includes the initial draw, after zooming and repeatedly while panning.
  ///
  /// Default: `null`
  external DrawCallbackFunc get drawCallback;
  external set drawCallback(DrawCallbackFunc v);

  /// When set, this callback gets called every time a new point is highlighted.
  ///
  /// Default: `null`
  external HighlightCallbackFunc get highlightCallback;
  external set highlightCallback(HighlightCallbackFunc v);

  /// A function to call when a data point is clicked. and the point that was clicked.
  ///
  /// Default: `null`
  external PointClickCallbackFunc get pointClickCallback;
  external set pointClickCallback(PointClickCallbackFunc v);

  /// When set, this callback gets called before the chart is drawn.
  ///
  /// Default: `null`
  external UnderlayCallbackFunc get underlayCallback;
  external set underlayCallback(UnderlayCallbackFunc v);

  /// When set, this callback gets called every time the user stops
  /// highlighting any point by mousing out of the graph.
  ///
  /// Default: `null`
  external GenericEventCallbackFunc get unhighlightCallback;
  external set unhighlightCallback(GenericEventCallbackFunc v);

  /// A function to call when the zoom window is changed (either by zooming in or out).
  /// When [animatedZooms] is set, [zoomCallback] is called once at the end of
  /// the transition (it will not be called for intermediate frames).
  ///
  /// Default: `null`
  external ZoomCallbackFunc get zoomCallback;
  external set zoomCallback(ZoomCallbackFunc v);

  /* Chart labels
  --------------------------------------------------------------------------- */

  /// Text to display above the chart. You can supply any HTML for this value, not just text.
  /// If you wish to style it using CSS, use the 'dygraph-label' or 'dygraph-title' classes.
  ///
  /// Default: `null`
  external String get title;
  external set title(String v);

  /// Height of the chart title, in pixels.
  /// This also controls the default font size of the title.
  /// If you style the title on your own, this controls how much space is set
  /// aside above the chart for the title's div.
  ///
  /// Default: `18`
  external num get titleHeight;
  external set titleHeight(num v);

  /// Height of the x-axis label, in pixels.
  /// This also controls the default font size of the x-axis label.
  /// If you style the label on your own, this controls how much space is set
  /// aside below the chart for the x-axis label's div.
  ///
  /// Default: `18`
  external num get xLabelHeight;
  external set xLabelHeight(num v);

  /// Text to display below the chart's x-axis.
  /// You can supply any HTML for this value, not just text.
  /// If you wish to style it using CSS, use the 'dygraph-label' or 'dygraph-xlabel' classes.
  ///
  /// Default: `null`
  external String get xlabel;
  external set xlabel(String v);

  /// Text to display to the right of the chart's secondary y-axis.
  /// This label is only displayed if a secondary y-axis is present.
  /// See this test for an example of how to do this.
  /// The comments for the `ylabel` option generally apply here as well.
  /// This label gets a 'dygraph-y2label' instead of a 'dygraph-ylabel' class.
  ///
  /// Default: `null`
  external String get y2label;
  external set y2label(String v);

  /// Width of the div which contains the y-axis label.
  /// Since the y-axis label appears rotated 90 degrees,
  /// this actually affects the height of its div.
  ///
  /// Default: `18`
  external num get yLabelWidth;
  external set yLabelWidth(num v);

  /// Text to display to the left of the chart's y-axis.
  ///
  /// You can supply any HTML for this value, not just text.
  /// If you wish to style it using CSS, use the 'dygraph-label' or 'dygraph-ylabel' classes.
  ///
  /// The text will be rotated 90 degrees by default, so CSS rules may behave
  /// in unintuitive ways. No additional space is set aside for a y-axis label.
  ///
  /// If you need more space, increase the width of the y-axis tick labels using the yAxisLabelWidth option.
  /// If you need a wider div for the y-axis label, either style it that way
  /// with CSS (but remember that it's rotated, so width is controlled by the
  /// `height` property) or set the `yLabelWidth` option.
  ///
  /// Default: `null`
  external String get ylabel;
  external set ylabel(String v);

  /* Configuration
  --------------------------------------------------------------------------- */

  /// Defines per-axis options. Valid keys are 'x', 'y' and 'y2'.
  /// Only some options may be set on a per-axis basis.
  /// If an option may be set in this way, it will be noted on this page.
  /// See also documentation on per-series and per-axis options.
  ///
  /// Default: `null`
  external DygraphAxes get axes;
  external set axes(DygraphAxes v);

  /// Defines per-graph plugins. Useful for per-graph customization
  ///
  /// Default: `[]`
  external List get plugins;
  external set plugins(List v);

  /* Data
  --------------------------------------------------------------------------- */

  /// Custom DataHandler. This is an advanced customization. See http://bit.ly/151E7Aq.
  ///
  /// Default: (depends on data)
  external DygraphDataHandler get dataHandler;
  external set dataHandler(DygraphDataHandler v);

  /// Sets the data being displayed in the chart.
  /// This can only be set when calling `updateOptions`; it cannot be set from the constructor.
  /// For a full description of valid data formats, see the Data Formats page.
  ///
  /// Default: (set when constructed)
  external dynamic /* string (URL of CSV or CSV), GViz DataTable or 2D Array */ get file;
  external set file(
      dynamic /* string (URL of CSV or CSV), GViz DataTable or 2D Array */ v);

  /* Data Line display
  --------------------------------------------------------------------------- */

  /// Usually, when Dygraphs encounters a missing value in a data series,
  /// it interprets this as a gap and draws it as such.
  ///
  /// If, instead, the missing values represents an x-value for which only a different
  /// series has data, then you'll want to connect the dots by setting this to true.
  /// To explicitly include a gap with this option set, use a value of NaN.
  ///
  /// Default: `false`
  external bool get connectSeparatedPoints;
  external set connectSeparatedPoints(bool v);

  /// Draw points at the edges of gaps in the data.
  /// This improves visibility of small data segments or other data irregularities.
  ///
  /// Default: `false`
  external bool get drawGapEdgePoints;
  external set drawGapEdgePoints(bool v);

  /// Draw a custom item when a point is highlighted.
  /// Default is a small dot matching the series color.
  /// This method should constrain drawing to within pointSize pixels from (cx, cy).
  /// Also see [drawPointCallback].
  ///
  /// Default: `null`
  external DrawPointCallbackFunc get drawHighlightPointCallback;
  external set drawHighlightPointCallback(DrawPointCallbackFunc v);

  /// Draw a custom item when drawPoints is enabled.
  /// Default is a small dot matching the series color.
  /// This method should constrain drawing to within pointSize pixels from (cx, cy).
  /// Also see [drawHighlightPointCallback].
  ///
  /// Default: `null`
  external DrawPointCallbackFunc get drawPointCallback;
  external set drawPointCallback(DrawPointCallbackFunc v);

  /// Draw a small dot at each point, in addition to a line going through the point.
  /// This makes the individual data points easier to see, but can increase visual clutter in the chart.
  /// The small dot can be replaced with a custom rendering by supplying a [drawPointCallback].
  ///
  /// Default: `false`
  external bool get drawPoints;
  external set drawPoints(bool v);

  /// Should the area underneath the graph be filled?
  /// This option is not compatible with error bars. This may be set on a per-series basis.
  ///
  /// Default: `false`
  external bool get fillGraph;
  external set fillGraph(bool v);

  /// A function (or array of functions) which plot each data series on the chart.
  ///
  /// Default: [DygraphCanvasRenderer.Plotters.fillPlotter, DygraphCanvasRenderer.Plotters.errorPlotter, DygraphCanvasRenderer.Plotters.linePlotter]
  external dynamic get plotter;
  external set plotter(dynamic v);

  /// The size of the dot to draw on each point in pixels (see drawPoints).
  /// A dot is always drawn when a point is "isolated", i.e. there is a missing point on either side of it.
  /// This also controls the size of those dots.
  ///
  /// Default: `1`
  external num get pointSize;
  external set pointSize(num v);

  /// If set, stack series on top of one another rather than drawing them independently.
  /// The first series specified in the input data will wind up on top of the chart
  /// and the last will be on bottom. NaN values are drawn as white areas
  /// without a line on top, see [stackedGraphNaNFill] for details.
  ///
  /// Default: `false`
  external bool get stackedGraph;
  external set stackedGraph(bool v);

  /// Controls handling of NaN values inside a stacked graph.
  /// NaN values are interpolated/extended for stacking purposes, but the actual
  /// point value remains NaN in the legend display.
  ///
  /// Valid option values are:
  /// - `'all'`    - interpolate internally, repeat leftmost and rightmost value as needed),
  /// - `'inside'` - interpolate internally only, use zero outside leftmost and rightmost value)
  /// - `'none'`   - treat NaN as zero everywhere).
  ///
  /// Default: `'all'`
  external String get stackedGraphNaNFill;
  external set stackedGraphNaNFill(String v);

  /// When set, display the graph as a step plot instead of a line plot.
  /// This option may either be set for the whole graph or for single series.
  ///
  /// Default: `false`
  external bool get stepPlot;
  external set stepPlot(bool v);

  /// Color for the line border used if strokeBorderWidth is set.
  ///
  /// Default: `'white'`
  external String get strokeBorderColor;
  external set strokeBorderColor(String v);

  /// Draw a border around graph lines to make crossing lines more easily distinguishable.
  /// Useful for graphs with many lines.
  ///
  /// Default: `null`
  external num get strokeBorderWidth;
  external set strokeBorderWidth(num v);

  /// A custom pattern array where the even index is a draw and odd is a space in pixels.
  /// If null then it draws a solid line. The array should have a even length as any
  /// odd lengthed array could be expressed as a smaller even length array.
  /// This is used to create dashed lines.
  ///
  /// Default: `null`
  external List get strokePattern;
  external set strokePattern(List v);

  /// The width of the lines connecting data points. This can be used to increase the contrast or some graphs.
  ///
  /// Default: `0.1`
  external num get strokeWidth;
  external set strokeWidth(num v);

  /// Which series should initially be visible?
  /// Once the Dygraph has been constructed, you can access and modify the visibility
  /// of each series using the visibility and setVisibility methods.
  ///
  /// Default: `[true, true, ...]`
  external List get visibility;
  external set visibility(List v);

  /* Data Series Colors
  --------------------------------------------------------------------------- */

  /// A per-series color definition.
  /// Used in conjunction with, and overrides, the colors option.
  ///
  /// Default: (see description)
  external String get color;
  external set color(String v);

  /// If colors is not specified, saturation of the automatically-generated data series colors.
  /// Valid values are between `0.0` and `1.0`.
  ///
  /// Default: `1.0`
  external double get colorSaturation;
  external set colorSaturation(double v);

  /// If colors is not specified, value of the data series colors, as in hue/saturation/value.
  /// Valid values are between `0.0` and `1.0`.
  ///
  /// Default: `1.0`
  external double get colorValue;
  external set colorValue(double v);

  /// List of colors for the data series.
  /// These can be of the form `'#AABBCC`' or `'rgb(255,100,200)`' or `'yellow'`, etc.
  /// If not specified, equally-spaced points around a color wheel are used.
  /// Overridden by the 'color' option.
  ///
  /// Default: (see description)
  external List get colors;
  external set colors(List v);

  /// Error bars (or custom bars) for each series are drawn in the same color as
  /// the series, but with partial transparency. This sets the transparency.
  /// A value of `0.0` means that the error bars will not be drawn, whereas a
  /// value of `1.0` means that the error bars will be as dark as the line for the series itself.
  /// This can be used to produce chart lines whose thickness varies at each point.
  ///
  /// Default: `0.15`
  external double get fillAlpha;
  external set fillAlpha(double v);

  /* Debugging
  --------------------------------------------------------------------------- */

  /// Set this option to log timing information.
  /// The value of the option will be logged along with the timimg,
  /// so that you can distinguish multiple dygraphs on the same page.
  ///
  /// Default: `null`
  external String get timingName;
  external set timingName(String v);

  /* Error Bars
  --------------------------------------------------------------------------- */

  /// Number of days over which to average data. Discussed extensively above.
  ///
  /// Default: `1`
  external int get rollPeriod;
  external set rollPeriod(int v);

  /// When errorBars is set, shade this many standard deviations above/below each point.
  ///
  /// Default: `2.0`
  external num get sigma;
  external set sigma(num v);

  /// Use in conjunction with the [fractions] option.
  /// Instead of plotting +/- N standard deviations, dygraphs will compute a
  /// Wilson confidence interval and plot that.
  /// This has more reasonable behavior for ratios close to 0 or 1.
  ///
  /// Default: `true`
  external bool get wilsonInterval;
  external set wilsonInterval(bool v);

  /* Grid
  --------------------------------------------------------------------------- */

  /// Whether to display gridlines in the chart.
  /// This may be set on a per-axis basis to define the visibility of each axis' grid separately.
  ///
  /// Default: `true` for x and y, `false` for y2
  external bool get drawGrid;
  external set drawGrid(bool v);

  /// The color of the gridlines.
  /// This may be set on a per-axis basis to define each axis' grid separately.
  ///
  /// Default: `'rgb(128,128,128)'`
  external String get gridLineColor;
  external set gridLineColor(String v);

  /// A custom pattern array where the even index is a draw and odd is a space in pixels.
  /// If `null` then it draws a solid line. The array should have a even length as
  /// any odd lengthed array could be expressed as a smaller even length array.
  /// This is used to create dashed gridlines.
  ///
  /// Default: `null`
  external List get gridLinePattern;
  external set gridLinePattern(List v);

  /// Thickness (in pixels) of the gridlines drawn under the chart.
  /// The vertical/horizontal gridlines can be turned off entirely by using the drawGrid option.
  /// This may be set on a per-axis basis to define each axis' grid separately.
  ///
  /// Default: `0.3`
  external num get gridLineWidth;
  external set gridLineWidth(num v);

  /* Interactive Elements
  --------------------------------------------------------------------------- */

  /// Set this option to animate the transition between zoom windows.
  /// Applies to programmatic and interactive zooms.
  ///
  /// Note that if you also set a drawCallback, it will be called several times on each zoom.
  /// If you set a zoomCallback, it will only be called after the animation is complete.
  ///
  /// Default: `false`
  external bool get animatedZooms;
  external set animatedZooms(bool v);

  /// Whether to hide the legend when the mouse leaves the chart area.
  ///
  /// Default: `true`
  external bool get hideOverlayOnMouseOut;
  external set hideOverlayOnMouseOut(bool v);

  /// The size in pixels of the dot drawn over highlighted points.
  ///
  /// Default: `3`
  external int get highlightCircleSize;
  external set highlightCircleSize(int v);

  /// Fade the background while highlighting series.
  ///
  /// `1` - fully visible background (disable fading).
  /// `0` - hiddden background (show highlighted series only).
  ///
  /// Default: `0.5`
  external num get highlightSeriesBackgroundAlpha;
  external set highlightSeriesBackgroundAlpha(num v);

  /// Sets the background color used to fade out the series in conjunction with [highlightSeriesBackgroundAlpha].
  ///
  /// Default: `'rgb(255, 255, 255)'`
  external String get highlightSeriesBackgroundColor;
  external set highlightSeriesBackgroundColor(String v);

  /// When set, the options from this object are applied to the timeseries closest
  /// to the mouse pointer for interactive highlighting.
  /// See also [highlightCallback]..
  ///
  /// Default: `null`
  external DygraphOptions get highlightSeriesOpts;
  external set highlightSeriesOpts(DygraphOptions v);

  /// See http://dygraphs.com/gallery/#g/interaction
  ///
  /// Default: (none)
  external DygraphInteractionModel get interactionModel;
  external set interactionModel(DygraphInteractionModel v);

  /// Whether to show the legend upon mouseover.
  ///
  /// Default: `true`
  external bool get showLabelsOnHighlight;
  external set showLabelsOnHighlight(bool v);

  /// If the rolling average period text box should be shown.
  ///
  /// Default: `false`
  external bool get showRoller;
  external set showRoller(bool v);

  /* Legend
  --------------------------------------------------------------------------- */

  /// A name for each data series, including the independent (X) series.
  ///
  /// For CSV files and DataTable objections, this is determined by context.
  ///
  /// For raw data, this must be specified.
  /// If it is not, default values are supplied and a warning is logged.
  ///
  /// Default: `['X', 'Y1', 'Y2', ...]`
  external List<String> get labels;
  external set labels(List<String> v);

  /// Show data labels in an external div, rather than on the graph.
  /// This value can either be a div element or a div id.
  ///
  /// Default: `null`
  external dynamic /* DOM element or string */ get labelsDiv;
  external set labelsDiv(dynamic /* DOM element or string */ v);

  /// Put `<br/>` between lines in the label string.
  /// Often used in conjunction with [labelsDiv].
  ///
  /// Default: `false`
  external bool get labelsSeparateLines;
  external set labelsSeparateLines(bool v);

  /// Show zero value labels in the labelsDiv.
  ///
  /// Default: `true`
  external bool get labelsShowZeroValues;
  external set labelsShowZeroValues(bool v);

  /// When to display the legend.
  /// By default, it only appears when a user mouses over the chart.
  /// Set it to `'always'` to always display a legend of some sort.
  /// When set to `'follow'`, legend follows highlighted points.
  ///
  /// Default: `onmouseover`
  external String get legend;
  external set legend(String v);

  /// Set this to supply a custom formatter for the legend.
  ///
  /// Default: `null`
  external LegendFormatterFunc get legendFormatter;
  external set legendFormatter(LegendFormatterFunc v);

  /// Function to provide a custom display format for the values displayed on mouseover.
  /// This does not affect the values that appear on tick marks next to the axes.
  /// To format those, see [axisLabelFormatter].
  /// This is usually set on a per-axis basis.
  ///
  /// Default: Depends on the type of your data.
  external ValueFormatterFunc get valueFormatter;
  external set valueFormatter(ValueFormatterFunc v);

  /* Overall display
  --------------------------------------------------------------------------- */

  /// Height, in pixels, of the chart.
  /// If the container div has been explicitly sized, this will be ignored.
  ///
  /// Default: `320`
  external num get height;
  external set height(num v);

  /// Overrides the pixel ratio scaling factor for the canvas's 2d context.
  /// Ordinarily, this is set to the `devicePixelRatio / (context.backingStoreRatio || 1)`,
  /// so on mobile devices, where the devicePixelRatio can be somewhere around `3`,
  /// performance can be improved by overriding this value to something less precise,
  /// like `1`, at the expense of resolution.
  ///
  /// Default: (devicePixelRatio / context.backingStoreRatio)
  external num get pixelRatio;
  external set pixelRatio(num v);

  /// Number of pixels to leave blank at the right edge of the Dygraph.
  /// This makes it easier to highlight the right-most data point.
  ///
  /// Default: `4`
  external num get rightGap;
  external set rightGap(num v);

  /// Width, in pixels, of the chart.
  /// If the container div has been explicitly sized, this will be ignored.
  ///
  /// Default: `480`
  external num get width;
  external set width(num v);

  /* Range Selector
  --------------------------------------------------------------------------- */

  /// The transparency of the veil that is drawn over the unselected portions of the range selector mini plot.
  /// A value of `0` represents full transparency and the unselected portions of the mini plot will appear as normal.
  /// A value of `1` represents full opacity and the unselected portions of the mini plot will be hidden.
  ///
  /// Default: `0.6`
  external double get rangeSelectorAlpha;
  external set rangeSelectorAlpha(double v);

  /// The width of the lines below and on both sides of the range selector mini plot.
  ///
  /// Default: `1`
  external num get rangeSelectorBackgroundLineWidth;
  external set rangeSelectorBackgroundLineWidth(num v);

  /// The color of the lines below and on both sides of the range selector mini plot.
  /// This can be of the form `'#AABBCC'` or `'rgb(255,100,200)'` or `'yellow'`.
  ///
  /// Default: `'gray'`
  external String get rangeSelectorBackgroundStrokeColor;
  external set rangeSelectorBackgroundStrokeColor(String v);

  /// The width the lines in the interactive layer of the range selector.
  ///
  /// Default: `1`
  external num get rangeSelectorForegroundLineWidth;
  external set rangeSelectorForegroundLineWidth(num v);

  /// The color of the lines in the interactive layer of the range selector.
  /// This can be of the form `'#AABBCC'` or `'rgb(255,100,200)'` or `'yellow'`.
  ///
  /// Default: `'black'`
  external String get rangeSelectorForegroundStrokeColor;
  external set rangeSelectorForegroundStrokeColor(String v);

  /// Height, in pixels, of the range selector widget.
  /// This option can only be specified at Dygraph creation time.
  ///
  /// Default: `40`
  external num get rangeSelectorHeight;
  external set rangeSelectorHeight(num v);

  /// The range selector mini plot fill color.
  /// This can be of the form `'#AABBCC'` or `'rgb(255,100,200)'` or `'yellow'`.
  /// You can also specify `null` or `''` to turn off fill.
  ///
  /// Default: `'#A7B1C4'`
  external String get rangeSelectorPlotFillColor;
  external set rangeSelectorPlotFillColor(String v);

  /// The top color for the range selector mini plot fill color gradient.
  /// This can be of the form `'#AABBCC'` or `'rgb(255,100,200)'` or `'yellow'`.
  /// You can also specify `null` or `''` to disable the gradient and fill with one single color.
  ///
  /// Default: `'white'`
  external String get rangeSelectorPlotFillGradientColor;
  external set rangeSelectorPlotFillGradientColor(String v);

  /// The width of the range selector mini plot line.
  ///
  /// Default: `1.5`
  external num get rangeSelectorPlotLineWidth;
  external set rangeSelectorPlotLineWidth(num v);

  /// The range selector mini plot stroke color.
  /// This can be of the form `'#AABBCC'` or `'rgb(255,100,200)'` or `'yellow'`.
  /// You can also specify `null` or `''` to turn off stroke.
  ///
  /// Default: `'#808FAB'`
  external String get rangeSelectorPlotStrokeColor;
  external set rangeSelectorPlotStrokeColor(String v);

  /// Mark this series for inclusion in the range selector.
  /// The mini plot curve will be an average of all such series.
  /// If this is not specified for any series, the default behavior is to average all the visible series.
  /// Setting it for one series will result in that series being charted alone in the range selector.
  /// Once it's set for a single series, it needs to be set for all series which should be included (regardless of visibility).
  ///
  /// Default: `null`
  external bool get showInRangeSelector;
  external set showInRangeSelector(bool v);

  /// Show or hide the range selector widget.
  ///
  /// Default: `false`
  external bool get showRangeSelector;
  external set showRangeSelector(bool v);

  /* Series
  --------------------------------------------------------------------------- */

  /// Defines per-series options.
  /// Its keys match the y-axis label names, and the values are dictionaries
  /// themselves that contain options specific to that series.
  ///
  /// Default: `null`
  external dynamic get series;
  external set series(dynamic v);

  /* Series
  --------------------------------------------------------------------------- */

  /// Unless it's run in scientific mode (see the [sigFigs] option),
  /// dygraphs displays numbers with [digitsAfterDecimal] digits after the decimal point.
  /// Trailing zeros are not displayed, so with a value of 2 you'll get:
  /// `0`, `0.1`, `0.12`, `123.45` but not `123.456` (it will be round to `123.46`).
  ///
  /// Numbers with absolute value less than 0.1^digitsAfterDecimal
  /// (i.e. those which would show up as `0.00`) will be displayed in scientific notation.
  ///
  /// Default: `2`
  external num get digitsAfterDecimal;
  external set digitsAfterDecimal(num v);

  /// Show K/M/B for thousands/millions/billions on y-axis.
  ///
  /// Default: `false`
  external bool get labelsKMB;
  external set labelsKMB(bool v);

  /// Show k/M/G for kilo/Mega/Giga on y-axis.
  /// This is different than labelsKMB in that it uses base 2, not 10.
  ///
  /// Default: `false`
  external bool get labelsKMG2;
  external set labelsKMG2(bool v);

  /// When displaying numbers in normal (not scientific) mode, large numbers
  /// will be displayed with many trailing zeros (e.g. 100000000 instead of 1e9).
  /// This can lead to unwieldy y-axis labels.
  ///
  /// If there are more than maxNumberWidth digits to the left of the decimal in
  /// a number, dygraphs will switch to scientific notation, even when not operating
  /// in scientific mode.
  ///
  //// If you'd like to see all those digits, set this to something large, like 20 or 30.
  ///
  /// Default: `6`
  external int get maxNumberWidth;
  external set maxNumberWidth(int v);

  /// By default, dygraphs displays numbers with a fixed number of digits after the decimal point.
  /// If you'd prefer to have a fixed number of significant figures, set this
  /// option to that number of sig figs.
  ///
  /// A value of 2, for instance, would cause 1 to be display as 1.0
  /// and 1234 to be displayed as 1.23e+3.
  ///
  /// Default: `null`
  external int get sigFigs;
  external set sigFigs(int v);
}
