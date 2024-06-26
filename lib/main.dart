import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maxopen_flutter_junior/app/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}
