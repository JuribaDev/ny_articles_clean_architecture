import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/app.dart';
import 'package:ny_articles_clean_architecture/app_initializer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initAll(Logger());
  runApp(const App());
}
