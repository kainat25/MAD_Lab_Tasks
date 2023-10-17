import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ZoomableWidget(),
    );
  }
}

class ZoomableWidget extends StatefulWidget {
  @override
  _ZoomableWidgetState createState() => _ZoomableWidgetState();
}

class _ZoomableWidgetState extends State<ZoomableWidget> {
  double _scale = 1.0;
  int _imageIndex = 0;
  List<String> _imageUrls = [
    'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', // Replace with your image URLs
    'https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  void _zoomIn() {
    setState(() {
      _scale += 0.2;
    });
  }

  void _zoomOut() {
    setState(() {
      _scale -= 0.2;
    });
  }

  void _changeImage() {
    setState(() {
      _imageIndex = (_imageIndex + 1) % _imageUrls.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestures'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onScaleUpdate: (details) {
                setState(() {
                  _scale = details.scale;
                });
              },
              child: Transform.scale(
                scale: _scale,
                child: Image.network(
                  _imageUrls[_imageIndex],
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _zoomIn,
                  child: Text('Zoom In'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _zoomOut,
                  child: const Text('Zoom Out'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _changeImage,
                  child: Text('Change Image'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
