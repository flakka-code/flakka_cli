import 'package:flakka_cli/src/commands/create/templates/templates.dart';
import 'package:flakka_cli/src/logger_extension.dart';
import 'package:mason/mason.dart';
import 'package:universal_io/io.dart';

/// {@template dart_pkg_template}
/// A Dart package template.
/// {@endtemplate}
class FlakkaDartPkgTemplate extends Template {
  /// {@macro dart_pkg_template}
  FlakkaDartPkgTemplate()
      : super(
          name: 'flakka_dart_pkg',
          bundle: flakkaDartPackageBundle,
          help: 'Generate a Flakka Dart package.',
        );

  @override
  Future<void> onGenerateComplete(Logger logger, Directory outputDir) async {
    if (await installDartPackages(logger, outputDir)) {
      await applyDartFixes(logger, outputDir);
    }
    _logSummary(logger);
  }

  void _logSummary(Logger logger) {
    logger
      ..info('\n')
      ..created('Created a Flakka Dart Package! 🦄')
      ..info('\n');
  }
}
