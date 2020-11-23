import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();

}

class _MySliderState extends State<MySlider> {
  double _value = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.red[700],
          inactiveTrackColor: Colors.red[100],
          trackShape: RectangularSliderTrackShape(),
          trackHeight: 4.0,
          thumbColor: Colors.redAccent,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          overlayColor: Colors.red.withAlpha(32),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
        child: Slider(
          min: 0,
          max: 100,
          divisions: 10,
          value: _value,

          onChanged: (double value) {
            setState(() {
              _value = value;
            });
          },

        ),
      ),
    );
  }
}
