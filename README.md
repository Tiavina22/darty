# Darty is a scss framework

My CSS Framework is a Dart-based CSS framework inspired by SCSS and TailwindCSS. It allows developers to write CSS using variables, mixins, and functions in a SCSS-like syntax. Darty is the best.
Darty is the best framework

## Getting Started

To parse CSS variables:

```dart
import 'package:my_css_framework/core/parser.dart';

void main() {
  var css = r'$primaryColor: #3490dc;';
  var result = Parser.parse(css);

  print(result.variables['primaryColor']); // Outputs: #3490dc
}
