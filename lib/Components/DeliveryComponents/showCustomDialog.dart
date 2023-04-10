import 'package:flutter/material.dart';
import 'package:foodcon_provider/Components/CustomButton.dart';
import 'package:foodcon_provider/Components/DeliveryComponents/ShowCustomDialog.dart';
import 'package:foodcon_provider/Global/textStyle.dart';
import 'package:sizer/sizer.dart';

showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Align(
            alignment: Alignment.centerRight, child: Text('الطلبات' + ' (7)')),
        content: SizedBox(
            height: 60.h,
            width: 80.w,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 7,
              ),
              itemCount: 7,
              itemBuilder: (context, index) => Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "مكرونة",
                    style: black12Bold,
                  )),
            )),
        actions: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: CustomButton(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Text(
                "رجوع",
                style: white10Bold,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      );
    },
  );
}
