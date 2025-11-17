import 'package:mustache_template/mustache_template.dart';

String renderPage(String className, String displayName) {
  final source = ''' ... contents of template ... ''';
  final template = Template(source, htmlEscapeValues: false);
  return template.renderString({
    'className': className,
    'displayName': displayName,
  });
}
