import 'package:flutter/material.dart';
import 'package:responsipraktpm/pages/category_page.dart';
import 'package:responsipraktpm/pages/food_detail_page.dart';
import 'package:responsipraktpm/pages/food_list_page.dart';
import 'package:flutter/widgets.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  static List<Widget> _widgetOptions = [
    CategoryPage(),
    FoodListPage(),
    FoodDetailPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('RESPONSI'),
            ],
          )),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
              ),
              label: 'Meal Categories'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.announcement_rounded,
            ),
            label: 'Meal List',
          ),
        ],
        onTap: (index) {
          setState(
                () {
              selectedIndex = index;
            },
          );
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}