import 'package:flutter/Material.dart';
import 'package:light_dark_mode/pages/homepage.dart';
import 'package:light_dark_mode/providers/themeprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      //darkTheme: darktheme,
      home: const HomePage(),
    );
  }
}
