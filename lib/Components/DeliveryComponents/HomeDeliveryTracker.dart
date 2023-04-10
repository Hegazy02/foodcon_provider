import 'package:flutter/material.dart';
import 'package:foodcon_provider/Providers/PressedProv.dart';
import 'package:provider/provider.dart';

class HomeDeliveryTracker extends StatelessWidget {
  HomeDeliveryTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PressedProv>(
      builder: (context, valprov, child) => Stepper(
          currentStep: valprov.isSecondStep == 0 ? 0 : 1,
          onStepTapped: (value) {
            valprov.isSecondStep = value;
          },
          steps: [
            Step(
                isActive: true,
                state: StepState.IconPin,
                title: Text("اسم الشيف"),
                content: Text("شارع القاهره عماره صيدلية النصر")),
            Step(
                state: StepState.IconDelivery,
                title: Text("اسم العميل"),
                content: Text("شارع القرماني عماره فوق سوبر ماركت الجلاء")),
          ]),
    );
  }
}
