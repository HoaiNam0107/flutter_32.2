// Project: flutter_widget_guide
import 'package:custom_scroll/tiktok_clone_ui/views/home_tiktok_screen.dart';
import 'package:custom_scroll/utils/expansible/expansible_example.dart';
import 'package:custom_scroll/utils/tinder_card/tinder_swipe_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:snackbarx/snackbarx.dart';

void main() async {
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
      home: const TinderSwipeCardScreen(),
    );
  }
}
