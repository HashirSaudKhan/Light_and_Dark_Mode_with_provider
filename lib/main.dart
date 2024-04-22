import 'package:flutter/Material.dart';
import 'package:light_dark_mode/pages/homepage.dart';
import 'package:light_dark_mode/theme/darktheme.dart';
import 'package:light_dark_mode/theme/lighttheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lighttheme,
      darkTheme: darktheme,
      home: const HomePage(),
    );
  }
}
