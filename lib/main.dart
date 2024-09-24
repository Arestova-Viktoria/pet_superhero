import 'package:flutter/material.dart';
import 'package:test_superhero/injection.dart';
import 'package:test_superhero/presentation/application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const Application());
}



