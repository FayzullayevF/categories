import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson103/utils/constants.dart';
import 'package:lesson103/presentation/AppBarActions.dart';
import 'package:lesson103/presentation/AppBarTitle.dart';
import 'package:lesson103/presentation/ScaffoldPart.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => CategoryPage()),
  GoRoute(path: '/page2', builder: (context, state) => HomePage())
]);

void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C0F0D),
      extendBody: true,
      appBar: AppBar(
        leadingWidth: 85,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(
            child: SizedBox(
                width: 21,
                height: 14,
                child: SvgPicture.asset(
                  "assets/icons/arrow.svg",
                  fit: BoxFit.cover,
                )),
          ),
        ),
        title: const Text(
          "Categories",
          style: TextStyle(color: Color(0xFFFD5D69), fontWeight: FontWeight.bold),
        ),
        actions: const [
          AppBarItem(
            image: "assets/icons/notification.svg",
            width: 12,
            height: 17,
          ),
          SizedBox(
            width: 5,
          ),
          AppBarItem(
            image: "assets/icons/qidirish.svg",
            width: 14,
            height: 18,
          ),
          SizedBox(
            width: 30,
          )
        ],
        centerTitle: true,
        backgroundColor: const Color(0xFF1C0F0D),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CategoryItem(image: ("assets/seafood.png"), text: "Seafood"),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                image: "assets/lunch.png",
                text: "Lunch",
              ),
              CategoryItem(
                image: "assets/breakfast.png",
                text: "Breakfast",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/dinner.png", text: "Dinner"),
              CategoryItem(image: "assets/vegan.png", text: "Vegan"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/dessert.png", text: "Dessert"),
              CategoryItem(image: "assets/drinks.png", text: "Drinks"),
            ],
          )
        ],
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xFFFD5D69),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/uycha.svg"),
                onPressed: () {
                  context.go("/page2");
                },
              ),
              SvgPicture.asset("assets/icons/comment.svg"),
              SvgPicture.asset("assets/icons/toplam.svg"),
              SvgPicture.asset("assets/icons/odam.svg"),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarItem extends StatelessWidget {
  const AppBarItem({super.key, required this.image, required this.width, required this.height});

  final String image;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration:
          BoxDecoration(color: const Color(0xFFFFC6C9), borderRadius: BorderRadius.circular(14)),
      child: Center(
        child: SizedBox(
          width: width,
          height: height,
          child: SvgPicture.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 159,
            height: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Center(
          child: SizedBox(
            width: 356,
            height: 149,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgound,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.backgound,
        title: const AppbarTitle(),
        actions: const [Appactions()],
      ),
      body: ScoffoldPage(),
      bottomNavigationBar: const NavigationBarPage(),
    );
  }
}

class NavigationBarPage extends StatelessWidget {
  const NavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: Color(0xFFFD5D69),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/uycha.svg"),
                onPressed: () {
                  context.go("/");
                },
              ),
              SvgPicture.asset("assets/icons/comment.svg"),
              SvgPicture.asset("assets/icons/toplam.svg"),
              SvgPicture.asset("assets/icons/odam.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
