library struct_generator;

import 'src/generator.dart';

Future<void> run(List<String> args) async {
  if (args.length < 3) {
    print("Usage: struct_generator show page <name>");
    return;
  }

  final command = args[0];
  final type = args[1];
  final name = args[2];

  if (command == 'show' && type == 'page') {
    generatePage(name, ".");
  } else {
    print("Unknown command");
  }
}
