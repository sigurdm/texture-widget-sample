import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

MethodChannel textureChannel = new MethodChannel("flutter/textures");

class TextureHolder extends StatefulWidget {
  createState() => new TextureHolderState();
}

class TextureHolderState extends State<TextureHolder>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller =
        new AnimationController(vsync: this, duration: new Duration(days: 2));
    controller.animateTo(1.0);
  }

  AnimationController controller;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new DecoratedBox(
      decoration: new BoxDecoration(color: Colors.blue),
      child: new Center(
        child: new SizedBox(
          width: 100.0,
          height: 100.0,
          child: new DecoratedBox(
            decoration: new BoxDecoration(border: new Border.all()),
            child: new AnimatedTexture(controller),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
      home: new Scaffold(
    body: new TextureHolder(),
  )));
}
