import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/app/app.dart';
import 'package:ny_articles_clean_architecture/app_initializer.dart';
import 'package:ny_articles_clean_architecture/bootstrap.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initAll(Logger());
  await bootstrap(() => const App());
}
