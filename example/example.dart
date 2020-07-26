import 'dart:html';

import 'package:dygraph/dygraph.dart';

void main() {
  final el = document.getElementById('chart_container');

  final options = DygraphOptions(
    labels: ['Index', 'X', 'Y'],
    colors: ['blue', 'red'],
  );

  final data = [
    [1, 10, 100],
    [2, 20, 80],
    [3, 50, 60],
    [4, 70, 80],
  ];

  Dygraph(el, data, options);
}
