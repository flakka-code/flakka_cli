import 'package:args/command_runner.dart';
import 'package:flakka_cli/src/commands/create/commands/commands.dart';
import 'package:mason/mason.dart';
import 'package:meta/meta.dart';

/// {@template create_command}
/// `very_good create` command creates code from various built-in templates.
/// {@endtemplate}
///
/// See also:
/// - [CreateSubCommand] for the base class for all create subcommands.
class CreateCommand extends Command<int> {
  /// {@macro create_command}
  CreateCommand({
    required Logger logger,
    @visibleForTesting MasonGeneratorFromBundle? generatorFromBundle,
    @visibleForTesting MasonGeneratorFromBrick? generatorFromBrick,
  }) {
    // very_good create dart_package <args>
    addSubcommand(
      CreateDartPackage(
        logger: logger,
        generatorFromBundle: generatorFromBundle,
        generatorFromBrick: generatorFromBrick,
      ),
    );

    // very_good create dart_package <args>
    addSubcommand(
      CreateFlakkaDartPackage(
        logger: logger,
        generatorFromBundle: generatorFromBundle,
        generatorFromBrick: generatorFromBrick,
      ),
    );
  }

  @override
  String get summary => '$invocation\n$description';

  @override
  String get description =>
      'Creates a new very good project in the specified directory.';

  @override
  String get name => 'create';

  @override
  String get invocation =>
      'very_good create <subcommand> <project-name> [arguments]';
}
