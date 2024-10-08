import 'package:colorchangeprovider/colorprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ColorChangeScreen extends StatefulWidget {

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  @override
  Widget build(BuildContext context) {
    final colorprovider=Provider.of<ColorProvider>(context);
    return Scaffold(
      backgroundColor: colorprovider.bgcolor,
      appBar: AppBar(title: Text("Color Change Screen using provider"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: colorprovider.changeColor,
            child: Center(child: Text("Tap to change color"))),
        ],
      ),
    );
  }
}