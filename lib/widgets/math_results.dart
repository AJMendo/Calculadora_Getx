import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sub_result.dart';
import 'line_separator.dart';
import 'main_result.dart';
import 'package:calculadora_getx/controllers/calculator_controller.dart';

class MathResults extends StatelessWidget {
  MathResults({super.key});
  
  final calculatorCtrl = Get.find<CalculatorController>();

    @override
  Widget build(BuildContext context) {
    
    return Obx( 
      () => Column(
        children: [
          SubResult( text: '${ calculatorCtrl.firstNumber }' ),
          SubResult( text: '${ calculatorCtrl.operation }' ),
          SubResult( text: '${ calculatorCtrl.secondNumber }' ),
          const LineSeparator(),
          MainResultText( text: '${ calculatorCtrl.mathResult }' ),
          SubResult( text: '1000' ),
          
        ],
    ));
  }
}