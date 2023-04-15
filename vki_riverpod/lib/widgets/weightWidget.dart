import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:vki_riverpod/Providers/all_providers.dart';

 class WeightWidget extends ConsumerWidget{
const WeightWidget({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return   SleekCircularSlider(
                        initialValue: 0,
                        max: 135,
                        innerWidget: (double value) {
                          return Center(child: Text(
                            textAlign: TextAlign.center,
                            value.toInt().toString()+"\n kilo(kg)",style: TextStyle(fontSize: 18,color: Colors.black),));
                        },

                        appearance: CircularSliderAppearance(customColors: CustomSliderColors(trackColors: [Colors.white60,Colors.white],progressBarColors: [Colors.orange,Colors.orange.shade300,Colors.orangeAccent])),
                        onChange: (double value) {

                             ref.read(weightProvider.state).state=value;

                        });
  }

}

