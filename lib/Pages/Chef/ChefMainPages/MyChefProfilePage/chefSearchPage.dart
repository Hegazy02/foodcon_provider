import 'package:flutter/material.dart';
import 'package:foodcon_provider/Components/CustomSearchBar.dart';
import 'package:foodcon_provider/Components/MyRecipe.dart';
import 'package:foodcon_provider/Components/RoundedAppBar.dart';
import 'package:foodcon_provider/Models/RecipeModel.dart';
import 'package:foodcon_provider/Pages/RecipePage.dart';
import 'package:foodcon_provider/Providers/chefProfileSearchProv.dart';
import 'package:foodcon_provider/Services/Lists/Lists.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class chefSearchPage extends StatelessWidget {
  const chefSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RoundedAppBar(
        title: "البحث",
      ),
      body: Column(
        children: [
          Consumer<chefProfileSearchProv>(
            builder: (context, value, child) => CustomSearchBar(
              top: 5,
              onChanged: (val) {
                print(val);
                value.searchList = autoList
                    .where((element) => element.title!.startsWith(val))
                    .toList();
                print(value.searchList);
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Consumer<chefProfileSearchProv>(
                builder: (context, value, child) {
              List<RecipeModel> myList =
                  value.searchList.isEmpty ? autoList : value.searchList;

              return ListView.separated(
                  itemBuilder: (context, index) => MyRecipe(
                        recipe: myList[index],
                        title: myList[index].title,
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecipePage(
                                recipe: myList[index],
                              ),
                            )),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 2.h,
                      ),
                  itemCount: myList.length);
            }),
          )
        ],
      ),
    );
  }
}
