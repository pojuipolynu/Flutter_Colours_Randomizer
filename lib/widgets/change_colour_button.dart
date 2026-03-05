import 'package:flutter/material.dart';
import 'package:flutter_colours_randomizer/providers/theme_provider.dart';
import 'package:provider/provider.dart';

///Widget with changing colour functionality
class ChangeColourButton extends StatelessWidget {
  ///Constructor
  const ChangeColourButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (_, themeProvider, _) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: themeProvider.changeColours,
          child: Scaffold(
            body: Center(
              child: Text(
                "Hello there",
                style: themeProvider.titleStyle,
              ),
            ),
          ),
        );
      },
    );
  }
}
