@JS()
library dygraph.crosshair;

import 'dart:html';

import 'package:js/js.dart';

import 'dygraph.dart';
import 'typedefs.dart';

/// Dygraph plugin to draw vertical/horizontal line on point highlight.
///
/// **NB!** Requires [crosshair.js](https://github.com/danvk/dygraphs/blob/master/src/extras/crosshair.js) to be loaded.
@JS('Dygraph.Plugins.Crosshair')
class DygraphCrosshair {
  external factory DygraphCrosshair([
    DygraphCrosshairOptions options,
  ]);

  external DygraphCrosshairOptions get options;
  external set options(DygraphCrosshairOptions v);

  @override
  external String toString();

  /// Plugin activate callback.
  external Map<String, GenericEventCallbackFunc> activate(Dygraph dygraph);

  /// Select/Highlight callback.
  external void select(Event e);

  /// Deselect callback.
  external void deselect(Event e);

  /// Plugin destroy callback.
  external void destroy();
}

@JS()
@anonymous
class DygraphCrosshairOptions {
  external factory DygraphCrosshairOptions({
    String direction,
    String color,
  });

  /// Valid values are: `'vertical'`, `'horizontal'` or `'both'`
  external String get direction;
  external set direction(String v);

  /// Crosshair line color.
  /// Could be in the form of `'#AABBCC`' or `'rgb(255,100,200)`' or `'yellow'`, etc.
  external String get color;
  external set color(String v);
}
