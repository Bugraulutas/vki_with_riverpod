import 'package:flutter/material.dart';
import 'widgets/heightWidget.dart';
import 'widgets/vki_calc_widget.dart';
import 'widgets/vki_result_widget.dart';
import 'widgets/weightWidget.dart';

class VkiApp extends StatelessWidget {
  const VkiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(

              colors: [Colors.blue.shade400,Colors.purple.shade400],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.only(topLeft:  Radius.circular(25),topRight: Radius.circular(25)),
          ),
          child: Column(



            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   const WeightWidget(),
                  const  HeightWidget(),
                  ],
                ),
              ),
              const SizedBox(height: 65,),

             const VkiCalcWidget(),
              const SizedBox(height: 65,),
              const VkiResultWidget(),


            ],
          ),
        ),
      ),

    );
  }
}
