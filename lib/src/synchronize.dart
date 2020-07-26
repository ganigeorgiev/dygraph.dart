@JS()
library dygraph.synchronize;

import 'package:js/js.dart';

import 'dygraph.dart';

/// Dygraph plugin to synchronize multiple charts interactions.
///
/// **NB!** Requires [synchronizer.js](https://github.com/danvk/dygraphs/blob/master/src/extras/synchronizer.js) to be loaded.
@JS('Dygraph.synchronize')
class DygraphSynchronize {
  external factory DygraphSynchronize(
    List<Dygraph> dygraphs, [
    DygraphSynchronizeOptions options,
  ]);

  external List<Dygraph> get dygraphs;
  external set dygraphs(List<Dygraph> v);

  external DygraphSynchronizeOptions get options;
  external set options(DygraphSynchronizeOptions v);

  /// Detach dygraphs sync listeners and null out all data references.
  external void detach();
}

@JS()
@anonymous
class DygraphSynchronizeOptions {
  external factory DygraphSynchronizeOptions({
    bool selection = true,
    bool zoom = true,
    bool range = true,
  });

  /// Syncs charts selection setting.
  ///
  /// Default: `true`
  external bool get selection;
  external set selection(bool v);

  /// Syncs charts zoom setting.
  ///
  /// Default: `true`
  external bool get zoom;
  external set zoom(bool v);

  /// Set to `false` if you wish to only sync the x-axis.
  /// The `range` option has no effect unless `zoom` is `true` (the default).
  ///
  /// Default: `true`
  external bool get range;
  external set range(bool v);
}
