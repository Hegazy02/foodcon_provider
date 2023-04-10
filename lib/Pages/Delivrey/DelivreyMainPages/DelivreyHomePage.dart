import 'package:flutter/material.dart';
import 'package:foodcon_provider/Components/DeliveryComponents/HomeDeliveryCard.dart';
import 'package:foodcon_provider/Components/MyOrder.dart';
import 'package:foodcon_provider/Components/notFound.dart';
import 'package:foodcon_provider/Global/textStyle.dart';
import 'package:foodcon_provider/Models/RecipeModel.dart';
import 'package:foodcon_provider/Providers/DarkmoodProv.dart';
import 'package:foodcon_provider/constants.dart';
import 'package:sizer/sizer.dart';

class DelivreyHomePage extends StatelessWidget {
  DelivreyHomePage({super.key});
  DarkmoodProv dark = DarkmoodProv();
  @override
  Widget build(BuildContext context) {
    print("asdasdasdasdasdasdasd");
    List myReceivedOrders = [1, 1, 1, 1, 1, 1];
    List myPreparingOrders = [1, 1];
    List myFinishedOrders = [1];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 3.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "الطلبات",
            style: black14Bold,
          ),
        ),
        myFinishedOrders.isEmpty
            ? NotFound()
            : SizedBox(
                height: 80.h,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => HomeDeliveryCard(),
                ),
              ),
      ],
    );
  }
}
