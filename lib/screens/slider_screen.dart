import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 1,
                max: 1000,
                value: _sliderValue,
                activeColor: AppTheme.primaryLigth,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                }),
            Image(
              image: const AssetImage('assets/Foto_Perfil.png'),
              height: _sliderValue,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
