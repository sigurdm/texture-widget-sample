import 'package:flutter/material.dart';

void main() {
  runApp(
    new DecoratedBox(
      decoration: new BoxDecoration(color: Colors.blue),
      child: new Center(
        child: new SizedBox(
          width: 100.0,
          height: 100.0,
          child: new DecoratedBox(
            decoration: new BoxDecoration(border: new Border.all()),
            child: new Texture(textureId: 2),
          ),
        ),
      ),
    ),
  );
}
