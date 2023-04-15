import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../Providers/all_providers.dart';

class HeightWidget extends ConsumerWidget {
  const HeightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  SleekCircularSlider(
        initialValue: 0,
        max: 2,
        innerWidget: (double value) {
          return Center(child: Text(
            textAlign: TextAlign.center,
            value.toStringAsFixed(2)+"\n boy(m)",style: TextStyle(fontSize: 18,color: Colors.black),));
        },

        appearance: CircularSliderAppearance(customColors: CustomSliderColors(trackColors: [Colors.white60,Colors.white],progressBarColors: [Colors.orange,Colors.orange.shade300,Colors.orangeAccent])),
        onChange: (double value) {
          ref.read(heightProvider.state).state=value;


        });
  }
}
