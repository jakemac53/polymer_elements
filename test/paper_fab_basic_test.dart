@TestOn('browser')
library polymer_elements.test.paper_fab_basic_test;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_fab.dart';
import 'package:polymer_elements/iron_icon.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'dart:math';
import 'package:test/test.dart';
import 'package:web_components/web_components.dart';
import 'common.dart';

Map centerOf(Element element) {
  var rect = element.getBoundingClientRect();
  return {'left': rect.left + rect.width / 2, 'top': rect.top + rect.height / 2};
}


bool approxEqual(p1, p2) {
  return p1['left'].round() == p2['left'].round() && p1['top'].round() == p2['top'].round();
}

main() async {
  await initWebComponents();

  group('<paper-fab>', () {

      PaperFab f1;
      PaperFab f2;

      setUp(() {
        f1 = fixture('TrivialFab').querySelector('#fab1');
        f2 = fixture('SrcFab');
      });

      test('applies an icon specified by the `icon` attribute', (){
        expect(f1.$['icon'].src, isEmpty);
        expect(Polymer.dom(f1.$['icon'].jsElement['root']).querySelector('svg'), isNotNull);
      });

      JsObject e;


      test('applies an icon specified by the `src` attribute', () {
      expect(f2.$['icon'].jsElement.callMethod('_usesIconset'), false);
      expect(f2.$['icon'].jsElement['_img'], isNotNull);
      });

      test('renders correctly independent of line height', () {
        expect( approxEqual(centerOf(f1.$['icon']),centerOf(f1)), isTrue);
      });

    });


}
