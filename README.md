Dygraph (Dart)
================================================================================

Dart JS interop for [Dygraph v2+](https://github.com/danvk/dygraphs) - fast, flexible open source JavaScript charting library.


## Usage

1. Register the Dart package in your `pubspec.yaml`:

    ```yaml
    dependencies:
      dygraph: ^0.1.0
    ```

2. Load the latest Dygraph source (js and css) in your html layout:

    ```html
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dygraph/2.1.0/dygraph.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dygraph/2.1.0/dygraph.min.js"></script>
    ```

3. Create a `Dygraph` instance:

    ```dart
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
    ```

> **Note 1:** Dart DateTime objects need to be converted to native js dates by using `dart:html_common` and `convertDartToNative_DateTime()`.

> **Note 2:** When passing a Dart function as a callback, make sure to wrap it with `allowInterop()` or `allowInteropCaptureThis()`.

Check the [API reference](https://pub.dev/documentation/dygraph/latest/) for detailed documentation.

To view the example, run `pub global run webdev serve example` from the root directory of this project.
