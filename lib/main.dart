import 'package:spot_presensi/app/presentation/login/login_screen.dart';
import 'package:spot_presensi/core/di/dependency.dart';
import 'package:spot_presensi/core/widget/error_app_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id', null);
  await initDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.red),
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

