import 'package:flutter/material.dart';
import 'package:foodcon_provider/Pages/Chef/ChefMainPages/MyChefProfilePage/MyChefProfilePage.dart';
import 'package:foodcon_provider/Pages/Delivrey/DelivreyMainPages/DelivreyChartsPage.dart';
import 'package:foodcon_provider/Pages/Delivrey/DelivreyMainPages/DelivreyHomePage.dart';
import 'package:foodcon_provider/Pages/Delivrey/DelivreyMainPages/DelivreySettingsPage.dart';
import 'package:foodcon_provider/Providers/FilterProv.dart';
import 'package:provider/provider.dart';
import 'package:iconsax/iconsax.dart';

class DeliveryMasterPage extends StatefulWidget {
  String id = "DeliveryMasterPage";
  DeliveryMasterPage({super.key});

  @override
  State<DeliveryMasterPage> createState() => _DeliveryMasterPageState();
}

class _DeliveryMasterPageState extends State<DeliveryMasterPage> {
  String searchVal = "";
  TextEditingController editingController = TextEditingController();
  @override
  int selectedpage = 3;
  Widget build(BuildContext context) {
    List body = [
      DelivreySettingsPage(),
      ProfilePage(),
      DelivreyChartsPage(),
      DelivreyHomePage(),
    ];

    return Scaffold(
        bottomNavigationBar: Consumer<FilterProv>(
          builder: (context, val, child) {
            return BottomNavigationBar(
                unselectedItemColor: Colors.grey,
                currentIndex: selectedpage,
                onTap: (value) {
                  setState(() {
                    selectedpage = value;
                  });
                  val.fil2 = [];
                  val.isGird = 1;
                  val.isCate = 0;
                },
                items: [
                  BottomNavigationBarItem(
                      label: "الاعدادات", icon: Icon(Iconsax.setting_3)),
                  BottomNavigationBarItem(
                      label: "البروفايل", icon: Icon(Iconsax.profile_circle)),
                  BottomNavigationBarItem(
                      label: "الاحصائيات", icon: Icon(Iconsax.chart)),
                  BottomNavigationBarItem(
                      label: "الطلبات",
                      icon: Icon(Icons.delivery_dining_outlined)),
                ]);
          },
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: body[selectedpage],
        ));
  }
}

////////////////////////////



