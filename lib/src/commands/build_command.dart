import 'package:args/command_runner.dart';
import 'package:flakka_build_runner/flakka_build_runner.dart'as flakka_build_runner;
import 'package:mason_logger/mason_logger.dart';
// import 'package:result_monad/result_monad.dart';

/// {@template sample_command}
///
/// `flakka_cli sample`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class BuildCommand extends Command<int> {
  /// {@macro sample_command}
  BuildCommand({
    required Logger logger,
  }) : _logger = logger {
    argParser.addFlag(
      'cyan',
      abbr: 'c',
      help: 'Prints the same joke, but in cyan',
      negatable: false,
    );
  }

  @override
  String get description => 'Build project proto files';

  @override
  String get name => 'build';

  final Logger _logger;

  @override
  Future<int> run() async {
    var output = 'Running the build now************';
    final result = await flakka_build_runner.run(['build']);
    _logger.info('result: $result');
    if (argResults?['cyan'] == true) {
      output = lightCyan.wrap(output)!;
    }
    _logger.info(output);
    return ExitCode.success.code;
  }
}
