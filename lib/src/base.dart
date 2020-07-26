// ignore_for_file: non_constant_identifier_names

@JS()
library dygraph.base;

import 'package:js/js.dart';

import 'options.dart';

@JS()
@anonymous
class DygraphArea {
  external factory DygraphArea({
    num x,
    num y,
    num w,
    num h,
  });

  external num get x;
  external set x(num v);

  external num get y;
  external set y(num v);

  external num get w;
  external set w(num v);

  external num get h;
  external set h(num v);
}

@JS()
@anonymous
class DygraphAxes {
  external factory DygraphAxes({
    DygraphOptions x,
    DygraphOptions y,
    DygraphOptions y2,
  });

  external DygraphOptions get x;
  external set x(DygraphOptions v);

  external DygraphOptions get y;
  external set y(DygraphOptions v);

  external DygraphOptions get y2;
  external set y2(DygraphOptions v);
}

@JS()
@anonymous
class DygraphPropertiesForSeries {
  external factory DygraphPropertiesForSeries({
    String name,
    int column,
    bool visible,
    String color,
    int axis,
  });

  external String get name;
  external set name(String v);

  external int get column;
  external set column(int v);

  external bool get visible;
  external set visible(bool v);

  external String get color;
  external set color(String v);

  external int get axis;
  external set axis(int v);
}

@JS()
@anonymous
class DygraphClosestPointResult {
  external factory DygraphClosestPointResult({
    num row,
    String seriesName,
    DygraphPointType point,
  });

  external num get row;
  external set row(num v);

  external String get seriesName;
  external set seriesName(String v);

  external DygraphPointType get point;
  external set point(DygraphPointType v);
}

@JS()
@anonymous
class DygraphPointType {
  external factory DygraphPointType({
    num idx,
    String name,
    num canvasx,
    num canvasy,
    num x,
    num xval,
    num y_bottom,
    num y,
    num y_stacked,
    num y_top,
    num yval_minus,
    num yval,
    num yval_plus,
    num yval_stacked,
  });

  external num get idx;
  external set idx(num v);

  external String get name;
  external set name(String v);

  external num get canvasx;
  external set canvasx(num v);

  external num get canvasy;
  external set canvasy(num v);

  external num get x;
  external set x(num v);

  external num get xval;
  external set xval(num v);

  external num get y_bottom;
  external set y_bottom(num v);

  external num get y;
  external set y(num v);

  external num get y_stacked;
  external set y_stacked(num v);

  external num get y_top;
  external set y_top(num v);

  external num get yval_minus;
  external set yval_minus(num v);

  external num get yval;
  external set yval(num v);

  external num get yval_plus;
  external set yval_plus(num v);

  external num get yval_stacked;
  external set yval_stacked(num v);
}
