import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/all_providers.dart';

class VkiCalcWidget extends ConsumerWidget {

  const VkiCalcWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {

   double calc=ref.watch(calcProvider);

    return  Text(
      textAlign: TextAlign.center,
      "Vücut Kitle Endeksi(VKİ)\n"+calc.toStringAsFixed(1)+" (kg)/(m)2",
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white),
    );
  }
}
