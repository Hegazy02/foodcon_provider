import 'package:flutter/material.dart';
import 'package:foodcon_provider/Components/darkThemeColors.dart';
import 'package:foodcon_provider/Pages/Auth/BeforeOnbordingPage.dart';
import 'package:foodcon_provider/Pages/Auth/OnboardingPage.dart';
import 'package:foodcon_provider/Pages/Auth/SignInPage.dart';
import 'package:foodcon_provider/Pages/Auth/SignUpPage.dart';
import 'package:foodcon_provider/Pages/Chef/chefMasterPage.dart';
import 'package:foodcon_provider/Pages/Delivrey/DeliveryMasterPage.dart';
import 'package:foodcon_provider/Providers/AddNewRecipePro.dart';
import 'package:foodcon_provider/Providers/DarkmoodProv.dart';
import 'package:foodcon_provider/Providers/PressedProv.dart';
import 'package:foodcon_provider/Providers/chefProfileSearchProv.dart';
import 'package:foodcon_provider/Providers/FilterProv.dart';
import 'package:foodcon_provider/Services/darkmoodSharedPref.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

bool? mood;
DarkmoodProv darkProv = DarkmoodProv();
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //بتخلي التطبيق ميعملش رن الا لما الحاجه الي بعد سطر دا تتنقذ

  mood = await DarkmoodSharedPref.getmood();
  print("mood ${mood}");
  darkProv.isDarkmood = mood ?? false;
  print("  darkProv.isDarkmood ${darkProv.isDarkmood}");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FilterProv>(
          create: (context) => FilterProv(),
        ),
        ChangeNotifierProvider<PressedProv>(
          create: (context) => PressedProv(),
        ),
        ChangeNotifierProvider<chefProfileSearchProv>(
          create: (context) => chefProfileSearchProv(),
        ),
        ChangeNotifierProvider<AddNewRecipePro>(
          create: (context) => AddNewRecipePro(),
        ),
        ChangeNotifierProvider<DarkmoodProv>(
          create: (context) => DarkmoodProv(),
        ),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        print("qqqqqqqqqqqq ${Provider.of<DarkmoodProv>(context).isDarkmood}");
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Styles.themeData(
              Provider.of<DarkmoodProv>(context).isDarkmood!, context),

          //  ThemeData(
          //     primarySwatch: mainC,
          //     primaryColor: KprimaryColor,
          //     cardColor: KprimaryColor),
          home: LoginPage(),
          routes: {
            SignUpPage().id: (context) => SignUpPage(),
            BeforeOnboardingPage().id: (context) => BeforeOnboardingPage(),
            LoginPage().id: (context) => LoginPage(),
            OnBoardingPage().id: (context) => OnBoardingPage(),
            ChefMasterPage().id: (context) => ChefMasterPage(),
            DeliveryMasterPage().id: (context) => DeliveryMasterPage(),
          },
        );
      }),
    );
  }
}
