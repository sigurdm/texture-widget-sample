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
    return new SizedBox(
      width: 100.0,
      height: 100.0,
      child: new AnimatedTexture(controller),
    );
  }
}

Widget buildCard(String title) {
  return new Card(
    child: new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new ListTile(
          leading: const Icon(Icons.airline_seat_flat_angled),
          title: new Text(title),
          //      subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
        ),
        new ButtonTheme.bar(
          // make buttons use the appropriate styles for cards
          child: new ButtonBar(
            children: <Widget>[
              new FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
              new FlatButton(
                child: const Text('LISTEN'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

void main() {
  runApp(new MaterialApp(
      home: new Scaffold(
    body: new ListView(
      children: [
        buildCard("Airline a"),
        buildCard("Airline b"),
        buildCard("Airline c"),
        buildCard("Airline d"),
        buildCard("Airline e"),
        buildCard("Airline f"),
        buildCard("Airline g"),
        new Card(
            child: new Column(children: [
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new Stack(
                  alignment: FractionalOffset.bottomRight,
                  children: <Widget>[
                    new SizedBox(
                      width: 280.0,
                      height: 210.0,
                      child: new TextureHolder(),
                    ),
                    new Image.asset('assets/flutter-mark-square-64.png'),
                  ]),
              new Text(
                "video video!",
              ),
            ],
          ),
          new ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: new ButtonBar(
              children: <Widget>[
                new FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                new FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ])),
        buildCard("Airline h"),
        buildCard("Airline i"),
        buildCard("Airline j"),
        buildCard("Airline k"),
        buildCard("Airline l"),
      ],
    ),
  )));
}
