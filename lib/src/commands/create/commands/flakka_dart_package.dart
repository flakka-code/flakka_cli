import 'package:flakka_cli/src/commands/create/commands/commands.dart';
import 'package:flakka_cli/src/commands/create/templates/templates.dart';

/// {@template very_good_create_dart_package_command}
/// A [CreateSubCommand] for creating Dart packages.
/// {@endtemplate}
class CreateFlakkaDartPackage extends CreateSubCommand with Publishable {
  /// {@macro very_good_create_dart_package_command}
  CreateFlakkaDartPackage({
    required super.logger,
    required super.generatorFromBundle,
    required super.generatorFromBrick,
  });

  @override
  String get name => 'flakka_dart_package';

  @override
  List<String> get aliases => ['flakka_dart_pkg'];

  @override
  String get description => 'Generate a Very Good Dart package.';

  @override
  Template get template => DartPkgTemplate();
}
