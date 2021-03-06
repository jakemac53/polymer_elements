// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `neon_animation_behavior`.
@HtmlImport('neon_animation_behavior_nodart.html')
library polymer_elements.lib.src.neon_animation.neon_animation_behavior;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'iron_meta.dart';

/// Use `Polymer.NeonAnimationBehavior` to implement an animation.
abstract class NeonAnimationBehavior implements CustomElementProxyMixin {

  /// Defines the animation timing.
  get animationTiming => jsElement[r'animationTiming'];
  set animationTiming(value) { jsElement[r'animationTiming'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// Called when the animation finishes.
  void complete() =>
      jsElement.callMethod('complete', []);

  /// Sets `transform` and `transformOrigin` properties along with the prefixed versions.
  void setPrefixedProperty(node, property, value) =>
      jsElement.callMethod('setPrefixedProperty', [node, property, value]);

  /// Returns the animation timing by mixing in properties from `config` to the defaults defined
  /// by the animation.
  void timingFromConfig(config) =>
      jsElement.callMethod('timingFromConfig', [config]);

  void registered() =>
      jsElement.callMethod('registered', []);
}
