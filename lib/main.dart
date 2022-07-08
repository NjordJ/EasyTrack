import 'package:easy_track/core/app.dart';
import 'package:easy_track/core/local_storage.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  LocalStorage().call();

  runApp(const App());
}
