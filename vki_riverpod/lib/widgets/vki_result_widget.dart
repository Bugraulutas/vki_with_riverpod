import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vki_riverpod/Providers/all_providers.dart';

class VkiResultWidget extends ConsumerWidget {
  const VkiResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    String result=ref.watch(resultProvider);

    return  Text(
      textAlign: TextAlign.center,
      "$result",
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),
    );
  }
}
