class Parser {
  static ParsedResult parse(String css) {
    var variables = <String, String>{};
    var lines = css.split(';');

    for (var line in lines) {
      if (line.trim().isNotEmpty && line.contains(':')) {
        var parts = line.split(':');
        var key = parts[0].trim().replaceFirst(r'$', '');
        var value = parts[1].trim();
        variables[key] = value;
      }
    }

    return ParsedResult(variables: variables);
  }
}

class ParsedResult {
  final Map<String, String> variables;

  ParsedResult({required this.variables});
}
