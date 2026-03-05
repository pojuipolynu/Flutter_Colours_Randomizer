import 'package:flutter/material.dart';
import 'package:flutter_colours_randomizer/pages/flutter_colour_randomizer_main.dart';
import 'package:flutter_colours_randomizer/providers/theme_provider.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const FlutterColourRandomizer(),
    ),
  );
}

///
class FlutterColourRandomizer extends StatelessWidget {
  ///Constructor
  const FlutterColourRandomizer({super.key});

  @override
  Widget build(BuildContext context) {
    final currentBackgroundColour = Provider.of<ThemeProvider>(
      context,
    ).currentBackgroundColour;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: currentBackgroundColour,
      ),
      home: const FlutterColourRandomizerMain(),
    );
  }
}
