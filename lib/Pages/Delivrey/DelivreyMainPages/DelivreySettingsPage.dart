import 'package:flutter/material.dart';
import 'package:foodcon_provider/Components/IconListTile.dart';
import 'package:foodcon_provider/Components/ProfileSettingListTile.dart';
import 'package:foodcon_provider/Helpers/bottomSheet.dart';
import 'package:foodcon_provider/Pages/Auth/SignInPage.dart';
import 'package:foodcon_provider/Providers/DarkmoodProv.dart';
import 'package:foodcon_provider/Services/darkmoodSharedPref.dart';
import 'package:foodcon_provider/Services/imagePicker.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class DelivreySettingsPage extends StatelessWidget {
  const DelivreySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 3.h,
        ),
        FutureBuilder(
            future: BottomSheetHelpers.futureProfilePic,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ProfileSettingsListTile(
                  child: Image.network(snapshot.data!),
                );
              } else if (CustomImagePicker.profilePic != null) {
                return ProfileSettingsListTile(
                    child: Image.file(CustomImagePicker.profilePic!));
              } else {
                return ProfileSettingsListTile(
                  child: SizedBox(),
                );
              }
            }),
        IconListTile(
          iconData: Iconsax.notification,
          title: "الاشعارات",
          onTap: () {},
        ),
        Consumer<DarkmoodProv>(
          builder: (context, valprov, child) => IconListTile(
            iconData: Iconsax.moon,
            title: "الوضع الليلي",
            onTap: () {
              valprov.isDarkmood = !valprov.isDarkmood!;
              DarkmoodSharedPref.setmood(valprov.isDarkmood!);
            },
            leading: Switch(
              value: valprov.isDarkmood!,
              onChanged: (newvalue) {
                valprov.isDarkmood = newvalue;
                DarkmoodSharedPref.setmood(valprov.isDarkmood!);
              },
            ),
          ),
        ),
        IconListTile(
          iconData: Iconsax.call,
          title: "اتصل بنا",
          onTap: () {},
        ),
        IconListTile(
          iconData: Icons.info_outline,
          title: "عن فودكن",
          onTap: () {},
        ),
        IconListTile(
          iconData: Iconsax.logout,
          title: "الخروج من الحساب",
          onTap: () {
            Navigator.of(context).pushNamed(LoginPage().id);
          },
        ),
        IconListTile(
          iconData: Iconsax.profile_delete,
          title: "مسح الحساب",
          onTap: () {},
        ),
      ],
    );
  }
}
