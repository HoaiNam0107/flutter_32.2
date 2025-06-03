import 'package:custom_scroll/utils/animated_nofi.dart';
import 'package:custom_scroll/utils/expansible/expansible_example.dart';
import 'package:custom_scroll/utils/snack_barx.dart';
import 'package:flutter/material.dart';
import 'package:snackbarx/snackbarx.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SnackbarX.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Snackbar Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const ExpansibleExample(),
    );
  }
}
