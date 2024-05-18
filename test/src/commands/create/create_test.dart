import 'package:mason/mason.dart';
import 'package:test/test.dart';

import '../../../helpers/helpers.dart';

final expectedUsage = [
  '''
Creates a new very good project in the specified directory.

Usage: very_good create <subcommand> <project-name> [arguments]
-h, --help    Print this usage information.

Available subcommands:
  flakka_dart_package   Generate a Very Good Dart package.

Run "flakka_cli help" to see global options.'''
];

const pubspec = '''
name: example
environment:
  sdk: ">=3.1.0 <4.0.0"
''';

void main() {
  group('create', () {
    test(
      'help',
      withRunner((commandRunner, logger, pubUpdater, printLogs) async {
        final result = await commandRunner.run(['create', '--help']);
        expect(printLogs, equals(expectedUsage));
        expect(result, equals(ExitCode.success.code));

        printLogs.clear();

        final resultAbbr = await commandRunner.run(['create', '-h']);
        expect(printLogs, equals(expectedUsage));
        expect(resultAbbr, equals(ExitCode.success.code));
      }),
    );
  });
}
