import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

class ColorControl extends StatefulWidget {
  Color controlcolor = Colors.white;

  ColorControl({Key? key}) : super(key: key);

  @override
  State<ColorControl> createState() => _ColorControlState();
}

class _ColorControlState extends State<ColorControl> {
  @override
  void initState() {
    super.initState();

    //generate random color
    widget.controlcolor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: widget.controlcolor,
      ),
    );
  }
}
