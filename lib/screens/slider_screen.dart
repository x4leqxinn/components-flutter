import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                onChanged: _sliderEnabled
                    ? (value) {
                        print(value);
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            Checkbox(
                value: _sliderEnabled,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderEnabled = value ?? true;
                      }
                    : null),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            Switch(
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),
            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('UwU'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                    fit: BoxFit.contain,
                    width: _sliderValue,
                    image: const NetworkImage(
                        'https://i.pinimg.com/originals/87/66/d3/8766d36b24e8a362510a3ebf6986d7a6.jpg')),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ));
  }
}
