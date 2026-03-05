import 'package:flutter/material.dart';

import 'package:flutter_colours_randomizer/widgets/change_colour_button.dart';

///
class FlutterColourRandomizerMain extends StatefulWidget {
  ///Constructor
  const FlutterColourRandomizerMain({super.key});

  @override
  State<FlutterColourRandomizerMain> createState() =>
      FlutterColourRandomizerMainState();
}

///
class FlutterColourRandomizerMainState
    extends State<FlutterColourRandomizerMain> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ChangeColourButton());
  }
}
