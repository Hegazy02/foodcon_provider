import 'package:flutter/material.dart';
import 'package:foodcon_provider/Components/CustomButton.dart';
import 'package:foodcon_provider/Components/CustomDropDown.dart';
import 'package:foodcon_provider/Components/CustomTextField.dart';
import 'package:foodcon_provider/Components/RoundedAppBar.dart';
import 'package:foodcon_provider/Global/textStyle.dart';
import 'package:foodcon_provider/Helpers/bottomSheet.dart';
import 'package:foodcon_provider/Providers/AddNewRecipePro.dart';
import 'package:foodcon_provider/Services/imagePicker.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class AddNewRecipePage extends StatefulWidget {
  const AddNewRecipePage({super.key});

  @override
  State<AddNewRecipePage> createState() => _AddNewRecipePageState();
}

class _AddNewRecipePageState extends State<AddNewRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RoundedAppBar(title: "اضافة وصفة جديدة"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "اسم الوصفة",
                  style: black12Bold,
                ),
              ],
            ),
            CostumTextField(
              isRtl: true,
              hint: "اسم الوصفة",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "صورة الوصفة",
                  style: black12Bold,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 10.w,
                  child: CustomButton(
                    child: Icon(Iconsax.image),
                    onPressed: () async {
                      await BottomSheetHelpers(isProfielPic: false)
                          .imagePicker(context);
                      setState(() {});
                    },
                    padding: EdgeInsets.symmetric(horizontal: 1),
                  ),
                ),
              ],
            ),
            FutureBuilder(
                future: BottomSheetHelpers.futureRecipepic,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    print("if");
                    return Container(
                      height: 150,
                      width: 70.w,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(snapshot.data!),
                              fit: BoxFit.fill)),
                    );
                  } else if (CustomImagePicker.recPic != null) {
                    print("else if");
                    return Container(
                      height: 150,
                      width: 70.w,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: FileImage(CustomImagePicker.recPic!),
                              fit: BoxFit.fill)),
                    );
                  } else {
                    print("else");
                    return SizedBox();
                  }
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "نبذه عنها",
                  style: black12Bold,
                ),
              ],
            ),
            CostumTextField(
              isRtl: true,
              hint: "نبذه عنها",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "المقادير",
                  style: black12Bold,
                ),
              ],
            ),
            Consumer<AddNewRecipePro>(
              builder: (context, valProv, child) => ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: valProv.ingredientsNumbers
                      .map(
                        (TextEditingController e) => Column(
                          children: [
                            CostumTextField(
                              isRtl: true,
                              hint: "الصنف",
                              controllers: e,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 10.w,
                                  child: CustomButton(
                                    child: Icon(Icons.delete),
                                    onPressed: () {
                                      valProv.removeingredientsNumbers = e;
                                    },
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 25.w,
                                  child: CostumTextField(
                                    keyboardType: TextInputType.number,
                                    isRtl: true,
                                    hint: "عدد المرات",
                                    controllers: TextEditingController(),
                                  ),
                                ),
                                CustomDropdown(type: 'مقادير'),
                              ],
                            ),
                          ],
                        ),
                      )
                      .toList()),
            ),
            Consumer<AddNewRecipePro>(
              builder: (context, valProv, child) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: CustomButton(
                  child: Text("اضافة مكون"),
                  onPressed: () {
                    valProv.AddingredientsNumbers = TextEditingController();
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "طريقة التحضير",
                  style: black12Bold,
                ),
              ],
            ),
            Consumer<AddNewRecipePro>(
                builder: (context, valProv, child) => ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children:
                        valProv.processNumbers.map((TextEditingController e) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 10.w,
                            child: CustomButton(
                              child: Icon(Icons.delete),
                              onPressed: () {
                                valProv.removeprocessNumbers = e;
                              },
                              padding: EdgeInsets.symmetric(horizontal: 1),
                            ),
                          ),
                          SizedBox(
                            width: 75.w,
                            child: CostumTextField(
                              isRtl: true,
                              hint: "العملية",
                              controllers: e,
                            ),
                          ),
                        ],
                      );
                    }).toList())),
            Consumer<AddNewRecipePro>(
              builder: (context, valProv, child) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: CustomButton(
                  child: Text("اضافة عملية"),
                  onPressed: () {
                    print(valProv.processNumbers);
                    valProv.AddprocessNumbers = TextEditingController();
                    print(valProv.processNumbers);
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "وقت التحضير ومستوى الصعوبة",
                  style: black12Bold,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 30.w,
                  child: CostumTextField(
                    keyboardType: TextInputType.number,
                    isRtl: true,
                    hint: "الوقت بالدقائق",
                  ),
                ),
                CustomDropdown(type: 'q'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "انشاء الوصفة",
                style: black12Bold,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
