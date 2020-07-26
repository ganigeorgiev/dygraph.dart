@JS()
library dygraph.legend_formatter;

import 'package:js/js.dart';

import 'dygraph.dart';

@JS()
@anonymous
class DygraphLegendFormatterSeries {
  external factory DygraphLegendFormatterSeries({
    String dashHTML,
    String yHTML,
    String label,
    String labelHTML,
    bool isVisible,
    bool isHighlighted,
    String color,
  });

  external String get dashHTML;
  external set dashHTML(String v);

  external String get yHTML;
  external set yHTML(String v);

  external String get label;
  external set label(String v);

  external String get labelHTML;
  external set labelHTML(String v);

  external bool get isVisible;
  external set isVisible(bool v);

  external bool get isHighlighted;
  external set isHighlighted(bool v);

  external String get color;
  external set color(String v);
}

@JS()
@anonymous
class DygraphLegendFormatterData {
  external factory DygraphLegendFormatterData({
    Dygraph dygraph,
    String xHTML,
    num x,
    List<DygraphLegendFormatterSeries> series,
  });

  external Dygraph get dygraph;
  external set dygraph(Dygraph v);

  external String get xHTML;
  external set xHTML(String v);

  external num get x;
  external set x(num v);

  external List<DygraphLegendFormatterSeries> get series;
  external set series(List<DygraphLegendFormatterSeries> v);
}
