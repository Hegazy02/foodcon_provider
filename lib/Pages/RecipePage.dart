import 'package:flutter/material.dart';
import 'package:foodcon_provider/Components/CustomButton.dart';
import 'package:foodcon_provider/Components/popularChefsIcons.dart';
import 'package:foodcon_provider/Providers/DarkmoodProv.dart';
import 'package:foodcon_provider/Providers/FilterProv.dart';
import 'package:foodcon_provider/constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:foodcon_provider/Models/RecipeModel.dart';

class RecipePage extends StatelessWidget {
  RecipeModel recipe;

  RecipePage({super.key, required this.recipe});
  String id = "RecipePage";
  DarkmoodProv darkmood = DarkmoodProv();
  bool fav = false;
  TextStyle FirstStyle = TextStyle(fontWeight: FontWeight.bold);
  TextStyle SecondStyle =
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FilterProv>(
        builder: (context, value, child) => DefaultTabController(
            initialIndex: 2,
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  expandedHeight: 350,
                  flexibleSpace: FlexibleSpaceBar(
                      titlePadding:
                          EdgeInsets.only(bottom: 8.h, right: 3.w, left: 3.w),
                      title: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 10, top: 5),
                              padding: EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: darkmood.isDarkmood == false
                                      ? Colors.redAccent
                                      : kDarksecondThemeColor),
                              child: Text(
                                "${recipe.category}",
                                style: TextStyle(
                                    fontFamily: "arabicmodern",
                                    color: Colors.white,
                                    fontSize: 8.sp),
                              )),
                          Spacer(),
                          Text(
                            "${recipe.chefName}",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          popularChefsIcons(
                            image: recipe.chefAvatar,
                            radius: 15,
                            onTap: () {},
                          ),
                        ],
                      ),
                      background: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "${recipe.image}",
                              ),
                              fit: BoxFit.fill),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                // Colors.black.withOpacity(0.3),
                                Colors.white.withOpacity(0.1),
                                Colors.black.withOpacity(0.3),
                              ])),
                        ),
                      )),
                  title: Text(
                    "الوصفة",
                    style: FirstStyle,
                  ),
                  bottom: PreferredSize(
                      child: Container(
                        height: 50,
                        color: darkmood.isDarkmood == false
                            ? Colors.white
                            : kDarkThemeColor,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Text("${recipe.star}"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.alarm,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Text("${recipe.min}" + " min"),
                            SizedBox(
                              width: 5,
                            ),
                            Spacer(),
                            Text(
                              "${recipe.title}",
                              style: SecondStyle,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      preferredSize: Size(double.infinity, 50)),
                ),
                SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                  TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: mainthemeColor(darkmood),
                    tabs: [
                      Tab(
                        child: Text(
                          "الوصفة",
                          style: FirstStyle,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "المكونات",
                          style: FirstStyle,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "التفاصيل",
                          style: FirstStyle,
                        ),
                      ),
                    ],
                  ),
                ))
              ],
              body: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        onPressed: () {},
                        child: Text("اطلب المكونات"),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                      ),
                      CustomButton(
                        onPressed: () {},
                        child: Text("اطلب الاكلة"),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: recipeData.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              right: 5, bottom: 3, top: 5),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Container(
                                height: 7,
                                width: 7,
                                decoration: BoxDecoration(
                                    color: darkmood.isDarkmood == false
                                        ? KprimaryColor
                                        : kDarksecondThemeColor,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              Text(
                                recipeData[index],
                                textDirection: TextDirection.rtl,
                                style: SecondStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListView.builder(
                        itemCount: ingredientsData.length,
                        padding: EdgeInsets.all(0),
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              right: 5, bottom: 3, top: 5),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Container(
                                height: 7,
                                width: 7,
                                decoration: BoxDecoration(
                                    color: darkmood.isDarkmood == false
                                        ? KprimaryColor
                                        : kDarksecondThemeColor,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              Text(
                                ingredientsData[index],
                                textDirection: TextDirection.rtl,
                                style: SecondStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            style: SecondStyle,
                            textDirection: TextDirection.rtl,
                            "كبة اللحم بالبرغل ... تميزي دائماً بتقديم أطيب وصفات المقبلات الشامية الرائعة من وصفات الكبة على سفرتك، تعلمي خطوات العمل البسيطة وقدميها على سفرتك ساخنة"),
                      ),
                    ]),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  DarkmoodProv darkmood = DarkmoodProv();
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ClipRRect(
      child: Column(
        children: [
          new Container(
            color:
                darkmood.isDarkmood == false ? Colors.white : kDarkThemeColor,
            child: _tabBar,
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

String detailsData =
    "كبة اللحم بالبرغل ... تميزي دائماً بتقديم أطيب وصفات المقبلات الشامية الرائعة من وصفات الكبة على سفرتك، تعلمي خطوات العمل البسيطة وقدميها على سفرتك ساخنة";
List recipeData = [
  " بمطحنة اللحم قومي بفرم اللحم فرماً ناعماً",
  " بمطحنة اللحم قومي بفرم اللحم فرماً ناعماً"
];
List ingredientsData = [" لحم مفروم | 1 كوب", " لحم مفروم | 1 كوب"];
