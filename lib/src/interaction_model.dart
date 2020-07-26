@JS()
library dygraph.interaction_model;

import 'package:js/js.dart';

import 'typedefs.dart';

/// Dygraph interaction model definition.
@JS()
@anonymous
class DygraphInteractionModel {
  external factory DygraphInteractionModel({
    bool willDestroyContextMyself,
    InteractionModelFunc click,
    InteractionModelFunc dblclick,
    InteractionModelFunc mousedown,
    InteractionModelFunc mouseup,
    InteractionModelFunc mousemove,
    InteractionModelFunc mouseenter,
    InteractionModelFunc mouseleave,
    InteractionModelFunc mousewheel,
    InteractionModelFunc touchstart,
    InteractionModelFunc touchmove,
    InteractionModelFunc touchend,
    InteractionModelFunc keydown,
    InteractionModelFunc keyup,
  });

  external bool get willDestroyContextMyself;
  external set willDestroyContextMyself(bool v);

  external InteractionModelFunc get click;
  external set click(InteractionModelFunc v);

  external InteractionModelFunc get dblclick;
  external set dblclick(InteractionModelFunc v);

  external InteractionModelFunc get mousedown;
  external set mousedown(InteractionModelFunc v);

  external InteractionModelFunc get mouseup;
  external set mouseup(InteractionModelFunc v);

  external InteractionModelFunc get mousemove;
  external set mousemove(InteractionModelFunc v);

  external InteractionModelFunc get mouseenter;
  external set mouseenter(InteractionModelFunc v);

  external InteractionModelFunc get mouseleave;
  external set mouseleave(InteractionModelFunc v);

  external InteractionModelFunc get mousewheel;
  external set mousewheel(InteractionModelFunc v);

  external InteractionModelFunc get touchstart;
  external set touchstart(InteractionModelFunc v);

  external InteractionModelFunc get touchmove;
  external set touchmove(InteractionModelFunc v);

  external InteractionModelFunc get touchend;
  external set touchend(InteractionModelFunc v);

  external InteractionModelFunc get keydown;
  external set keydown(InteractionModelFunc v);

  external InteractionModelFunc get keyup;
  external set keyup(InteractionModelFunc v);
}
