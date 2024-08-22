import 'package:test/test.dart';
import 'package:darty/core/parser.dart';

void main() {
  group('CSS Parser', () {
    test('Parses basic CSS variables', () {
      var css = r'$primaryColor: #3490dc;';
      var result = Parser.parse(css);

      expect(result.variables['primaryColor'], equals('#3490dc'));
    });
  });
}
