import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:struct_generator/src/templates/mustache_template.dart';

void generatePage(String name, String outputDir) {
  final className = '${name[0].toUpperCase()}${name.substring(1)}';
  final fileContent = renderPage(className, name);

  // Always create inside lib/
  final libPath = p.join('lib', outputDir);

  final dir = Directory(p.join(libPath, name));
  dir.createSync(recursive: true);

  final filePath = p.join(dir.path, '${name}_page.dart');
  File(filePath).writeAsStringSync(fileContent);

  print('Created $filePath');
}



// void generatePage(String name, String outputDir) {
//   final className = '${name[0].toUpperCase()}${name.substring(1)}';
//   final fileContent = renderPage(className, name);
//
//   final dir = Directory(p.join(outputDir, name));
//   dir.createSync(recursive: true);
//
//   final filePath = p.join(dir.path, '${name}_page.dart');
//   File(filePath).writeAsStringSync(fileContent);
//
//   print('Created $filePath');
// }
