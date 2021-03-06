// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `neon_animation_runner_behavior`.
@HtmlImport('neon_animation_runner_behavior_nodart.html')
library polymer_elements.lib.src.neon_animation.neon_animation_runner_behavior;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'neon_animatable_behavior.dart';
import 'iron_meta.dart';

/// `Polymer.NeonAnimationRunnerBehavior` adds a method to run animations.
abstract class NeonAnimationRunnerBehavior implements CustomElementProxyMixin {

  /// Cancels the currently running animation.
  void cancelAnimation() =>
      jsElement.callMethod('cancelAnimation', []);

  /// Plays an animation with an optional `type`.
  void playAnimation(type, cookie) =>
      jsElement.callMethod('playAnimation', [type, cookie]);
}
