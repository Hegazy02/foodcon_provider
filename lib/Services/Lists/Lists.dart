import 'package:flutter/material.dart';
import 'package:foodcon_provider/Models/CategoryModel.dart';
import 'package:foodcon_provider/Models/RecipeModel.dart';

List<RecipeModel> autoList = [
  RecipeModel.fromJson({
    "title": "c",
    "category": "مكرونة",
    "image": "assets/images/home/recipes/recipe1.jpg",
    "chefName": "Mano",
    "chefAvatar": "${popularChefsPath}chef1.jpg",
    "star": 4.6,
    "min": 20,
    "isLiked": false,
    "desc":
        "جربي طريقة الفرايد تشيكن الجديده بصوص الكاري والكورن فليكس على الطريقة الهندية",
    "level": "Easy",
    "posted": DateTime.now().year,
  }),
  RecipeModel.fromJson({
    "title": "مكرونة بالصوص الاحمر",
    "category": "مكرونة",
    "image": "assets/images/home/recipes/recipe1.jpg",
    "chefName": "Mano",
    "chefAvatar": "${popularChefsPath}chef1.jpg",
    "star": 4.6,
    "min": 20,
    "isLiked": false,
    "desc":
        "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
    "level": "Easy",
    "posted": DateTime.now().year,
  }),
  RecipeModel.fromJson({
    "title": "مكرونة بالصوص الاحمر",
    "category": "بيتزا",
    "image": "assets/images/home/recipes/recipe1.jpg",
    "chefName": "Mano",
    "chefAvatar": "${popularChefsPath}chef1.jpg",
    "star": 4.6,
    "min": 20,
    "isLiked": false,
    "desc":
        "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
    "level": "Medium",
    "posted": DateTime.now().year,
  }),
  RecipeModel.fromJson({
    "title": "فراخ",
    "category": "فراخ",
    "image": "assets/images/home/recipes/recipe2.jpg",
    "chefName": "omer",
    "chefAvatar": "assets/images/home/Chefs/chef3.jpg",
    "star": 4.5,
    "min": 30,
    "isLiked": false,
    "desc":
        "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
    "level": "Easy",
    "posted": DateTime.now().year,
  }),
  RecipeModel.fromJson(
    {
      "title": "فراخ",
      "category": "فرايد",
      "image": "assets/images/home/recipes/recipe2.jpg",
      "chefName": "omer",
      "chefAvatar": "assets/images/home/Chefs/chef3.jpg",
      "star": 4.5,
      "min": 30,
      "isLiked": false,
      "desc":
          "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
      "level": "Hard",
      "posted": DateTime.now().year,
    },
  ),
  RecipeModel.fromJson(
    {
      "title": "فراخ فرايدة",
      "category": "فراخ",
      "image": "assets/images/home/recipes/recipe3.jpg",
      "chefName": "Hegazy",
      "chefAvatar": "${popularChefsPath}chef2.jpg",
      "star": 4.3,
      "min": 15,
      "isLiked": false,
      "desc":
          "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
      "level": "Easy",
      "posted": DateTime.now().year,
    },
  ),
  RecipeModel.fromJson(
    {
      "title": "فطيرة توت",
      "category": "تحلية",
      "image": "assets/images/home/recipes/recipe4.jpg",
      "chefName": "Sakr",
      "chefAvatar": "${popularChefsPath}chef3.jpg",
      "star": 4.1,
      "min": 17,
      "isLiked": false,
      "desc":
          "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
      "level": "Easy",
      "posted": DateTime.now().year,
    },
  ),
  RecipeModel.fromJson(
    {
      "title": "برجر",
      "category": "برجر",
      "image": "assets/images/home/recipes/recipe5.jpg",
      "chefName": "Dude",
      "chefAvatar": "${popularChefsPath}chef4.jpg",
      "star": 3.7,
      "min": 5,
      "isLiked": false,
      "desc":
          "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
      "level": "Easy",
      "posted": DateTime.now().year,
    },
  ),
  RecipeModel.fromJson(
    {
      "title": "beef",
      "category": "برجر",
      "image": "assets/images/home/recipes/recipe6.jpg",
      "chefName": "Dude",
      "chefAvatar": "${popularChefsPath}chef5.jpg",
      "star": 2.6,
      "min": 10,
      "isLiked": true,
      "desc":
          "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
      "level": "Easy",
      "posted": DateTime.now().year,
    },
  ),
  RecipeModel.fromJson(
    {
      "title": "beef",
      "category": "شاورما",
      "image": "assets/images/home/recipes/recipe6.jpg",
      "chefName": "Dude",
      "chefAvatar": "${popularChefsPath}chef5.jpg",
      "star": 2.6,
      "min": 10,
      "isLiked": true,
      "desc":
          "hasog ihwaei oefhweh asodnvash sdfh sduhvo0 fh08arf hgsdfwey0gvah ewehrg sdfsd paobn sljghpa sodjna sldnasdf weggewr ewrg fhoi",
      "level": "Easy",
      "posted": DateTime.now().year,
    },
  ),
];
String mainPAth = "assets/images/home/main/";

String popularChefsPath = "assets/images/home/Chefs/";
List popularChefsList = [
  {"chefAvatar": "${popularChefsPath}chef1.jpg", "chefName": "Omer"},
  {"chefAvatar": "${popularChefsPath}chef2.jpg", "chefName": "Saleh"},
  {"chefAvatar": "${popularChefsPath}chef3.jpg", "chefName": "Hegazy"},
  {"chefAvatar": "${popularChefsPath}chef4.jpg", "chefName": "Amr"},
  {"chefAvatar": "${popularChefsPath}chef5.jpg", "chefName": "Feky"},
  {"chefAvatar": "${popularChefsPath}chef6.jpg", "chefName": "Kareem"},
  {"chefAvatar": "${popularChefsPath}chef7.jpg", "chefName": "May"},
  {"chefAvatar": "${popularChefsPath}chef8.jpg", "chefName": "Mark"},
];
String popularRecipesPath = "assets/images/home/recipes/";
List popularRecipesList = [
  {
    "image": "${popularRecipesPath}recipe1.jpg",
    "name": "Omer",
    "avatar": "${popularChefsPath}chef1.jpg",
    "star": "4.6",
    "min": "5"
  },
  {
    "image": "${popularRecipesPath}recipe2.jpg",
    "name": "Omer",
    "avatar": "${popularChefsPath}chef1.jpg",
    "star": "4.2",
    "min": "4"
  },
  {
    "image": "${popularRecipesPath}recipe3.jpg",
    "name": "Mark",
    "avatar": "${popularChefsPath}chef8.jpg",
    "star": "4",
    "min": "5"
  },
  {
    "image": "${popularRecipesPath}recipe4.jpg",
    "name": "May",
    "avatar": "${popularChefsPath}chef7.jpg",
    "star": "3.8",
    "min": "3"
  },
  {
    "image": "${popularRecipesPath}recipe5.jpg",
    "name": "Saleh",
    "avatar": "${popularChefsPath}chef2.jpg",
    "star": "3.7",
    "min": "5"
  },
  {
    "image": "${popularRecipesPath}recipe6.jpg",
    "name": "Hegazy",
    "avatar": "${popularChefsPath}chef3.jpg",
    "star": "3.2",
    "min": "3"
  },
  {
    "image": "${popularRecipesPath}recipe7.jpg",
    "name": "Kareem",
    "avatar": "${popularChefsPath}chef6.jpg",
    "star": "3",
    "min": "6"
  },
  {
    "image": "${popularRecipesPath}recipe8.jpg",
    "name": "Feky",
    "avatar": "${popularChefsPath}chef5.jpg",
    "star": "2.6",
    "min": "4"
  },
  {
    "image": "${popularRecipesPath}recipe9.jpg",
    "name": "Amr",
    "avatar": "${popularChefsPath}chef4.jpg",
    "star": "2.1",
    "min": "5"
  },
];
List categoriesList = [
  {
    "category": "فراخ",
    "color1": Color.fromARGB(255, 250, 221, 176),
    "color2": Color.fromARGB(255, 206, 165, 104),
    "color4": Colors.orange
  },
  {
    "category": "بيتزا",
    "color1": Color.fromARGB(255, 235, 233, 153),
    "color2": Color.fromARGB(255, 214, 216, 113),
    "color4": Colors.yellow
  },
  {
    "category": "برجر",
    "color1": Color.fromARGB(255, 236, 154, 154),
    "color2": Color.fromARGB(255, 216, 130, 115),
    "color4": Colors.red
  },
  {
    "category": "فرايد",
    "color1": Color.fromARGB(255, 236, 154, 154),
    "color2": Color.fromARGB(255, 216, 130, 115),
    "color4": Colors.red
  },
  {
    "category": "مكرونة",
    "color1": Color.fromARGB(255, 153, 235, 157),
    "color2": Color.fromARGB(255, 110, 209, 119),
    "color4": Colors.green
  },
  {
    "category": "تحلية",
    "color1": Color.fromARGB(255, 165, 129, 224),
    "color2": Color.fromARGB(255, 146, 119, 221),
    "color4": Colors.deepPurple
  },
  {
    "category": "شاورما",
    "color1": Color.fromARGB(255, 216, 218, 216),
    "color2": Color.fromARGB(255, 174, 175, 174),
    "color4": Colors.grey
  },
  {
    "category": "اخرى",
    "color1": Color.fromARGB(255, 159, 175, 159),
    "color2": Color.fromARGB(255, 138, 146, 138),
    "color4": Color.fromARGB(255, 122, 121, 121)
  },
];
List<CategoryModel> foodList = [
  CategoryModel.fromJson({
    "category": "استكشف",
    "icon": "assets/images/home/icons/all.png",
    "image": "${mainPAth}Grilled Chickens.jpg",
  }),
  CategoryModel.fromJson({
    "category": "مكرونة",
    "icon": "assets/images/home/icons/spaguetti.png",
    "image": "${mainPAth}With Rice.jpg",
  }),
  CategoryModel.fromJson({
    "category": "برجر",
    "icon": "assets/images/home/icons/burger.png",
    "image": "${mainPAth}Burger.jpg",
  }),
  CategoryModel.fromJson({
    "category": "فراخ",
    "icon": "assets/images/home/icons/chicken.png",
    "image": "${mainPAth}Grilled Chickens.jpg",
  }),
  CategoryModel.fromJson({
    "category": "بيتزا",
    "icon": "assets/images/home/icons/pizza.png",
    "image": "${mainPAth}Pizza.jpg",
  }),
  CategoryModel.fromJson({
    "category": "فرايد",
    "icon": "assets/images/home/icons/fried chicken.png",
    "image": "${mainPAth}Fried Chickens.jpg",
  }),
  CategoryModel.fromJson({
    "category": "شاورما",
    "icon": "assets/images/home/icons/shawarma.png",
    "image": "${mainPAth}Shawrma.jpg",
  })
];
List girdListOption = [Icons.grid_view, Icons.list];
