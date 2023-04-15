import 'package:flutter_riverpod/flutter_riverpod.dart';

final weightProvider=StateProvider<double>((ref){
  return 0;
});

final heightProvider=StateProvider<double>((ref){
  return 1;
});

final calcProvider=StateProvider<double>((ref){
  final weightProviderResult=ref.watch(weightProvider);
  final heightProviderResult=ref.watch(heightProvider);
  final double calc=(weightProviderResult/(heightProviderResult*heightProviderResult));

  return  calc;
});

final resultProvider=StateProvider<String>((ref){
  final weightProviderResult=ref.watch(weightProvider);
  final heightProviderResult=ref.watch(heightProvider);
  final result=(weightProviderResult/(heightProviderResult*heightProviderResult));



  if(1<result&&result<=18.5){
    return "Zayıf";

  }else if(18.5<result&&result<=24.9){
    return "Normal kilolu";
  }else if(25<=result&&result<=29.9){
    return "Fazla kilolu";
  }
  else if(30<=result&&result<=34.9){
    return "1. Derece Obezite";
  }
  else if(35<=result&&result<=40){
    return "2. Derece Obezite";
  }
  else if(result>40&&result<=50){
    return "3. Derece Obezite / Morbid Obezite";
  }
  else if(result>50&&result<=60){
    return "Süper Obezite";
  }
  else if(result>60){
    return "Süper Süper Obezite";
  }
  else {
    return "";
  }

});