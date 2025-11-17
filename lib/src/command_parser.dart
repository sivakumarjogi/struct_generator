import 'package:args/args.dart';

ArgResults parseArgs(List<String> argv) {
  final parser = ArgParser()
    ..addFlag('help', abbr: 'h', negatable: false)
    ..addFlag('with-page', negatable: false)
    ..addFlag('with-bloc', negatable: false)
    ..addOption('output', abbr: 'o', defaultsTo: '.');

  return parser.parse(argv);
}
