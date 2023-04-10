import 'package:flutter/material.dart';
import 'package:foodcon_provider/Components/CustomButton.dart';
import 'package:foodcon_provider/Components/DeliveryComponents/HomeDeliveryTracker.dart';
import 'package:foodcon_provider/Components/DeliveryComponents/showCustomDialog.dart';
import 'package:foodcon_provider/Global/textStyle.dart';
import 'package:foodcon_provider/Providers/DarkmoodProv.dart';
import 'package:foodcon_provider/constants.dart';
import 'package:sizer/sizer.dart';

class HomeDeliveryCard extends StatelessWidget {
  HomeDeliveryCard({super.key});
  DarkmoodProv darkmood = DarkmoodProv();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 70.w,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                offset: Offset(2, 5),
                spreadRadius: 3,
                color: Colors.grey.withOpacity(0.4))
          ]),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(
          height: 3,
        ),
        Container(
          height: 30.h,
          width: 60.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/images/home/recipes/recipe5.jpg"),
                  fit: BoxFit.fill)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Text("(7) تفاصيل المنتجات المطلوبة",
                  style: deliveryTextStyle(darkmood)),
              onTap: () {
                showCustomDialog(context);
              },
            ),
          ],
        ),
        Container(
          height: 40,
          color: KprimaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              Text(
                '(اونلاين)',
                style: white8Bold,
              ),
              Spacer(
                flex: 2,
              ),
              Text(
                "طلب رقم 14",
                style: white10Bold,
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
        HomeDeliveryTracker(),
        Row(
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              "ج10",
              style: purple14Bold,
            ),
            Spacer(
              flex: 1,
            ),
            CustomButton(
              child: Text(
                "اقبل",
                style: white14Bold,
              ),
              color: mainthemeColor(darkmood),
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
        SizedBox(
          height: 3,
        ),
      ]),
    );
  }
}
