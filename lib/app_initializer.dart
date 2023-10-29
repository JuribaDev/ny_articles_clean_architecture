// ignore_for_file: inference_failure_on_instance_creation

import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/injection_container.dart';

class AppInitializer {
  static Future<void> initAll(Logger logger) async {
    await _initializeDependencies(logger);
  }

  static Future<void> _initializeDependencies(Logger logger) async {
    try {
      await initializeDependencies(logger);
    } catch (e) {
      logger.e('Specific error occurred in initializeDependencies: $e');
      // ToDo: Display an Error screen, including a way to let the development team know that the app has crashed.
    }
  }
}
