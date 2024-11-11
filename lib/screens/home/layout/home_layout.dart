import 'package:auxzon/screens/home/sections/search_screen.dart';
import 'package:auxzon/screens/home/sections/favourites_screen.dart';
import 'package:auxzon/screens/home/sections/home_screen.dart';
import 'package:auxzon/screens/home/sections/cart_screen.dart';
import 'package:auxzon/screens/home/sections/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _screens = [
    const SearchScreen(),
    const FavouritesScreen(),
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (_selectedIndex == 0 || _selectedIndex == 4)
          ? const Color(0XFFFCFCFF)
          : (_selectedIndex == 3 || _selectedIndex == 1)
              ? Colors.white
              : const Color.fromARGB(255, 247, 247, 247),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildNavItem('assets/icons/search.png', 0),
            _buildNavItem('assets/icons/favorite.png', 1),
            _buildNavItem('assets/icons/home.png', 2),
            _buildNavItem('assets/icons/cart.png', 3),
            _buildNavItem('assets/icons/profile-avatar.png', 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String imgUrl, int index) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _onItemTapped(index),
        splashColor: Colors.red.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
        child: _selectedIndex == index
            ? Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  // Center to keep the image in the middle
                  child: SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset(
                      imgUrl,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : SizedBox(
                width: 60, height: 60,
                child: Center(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      imgUrl,
                      color: Colors.grey,
                    ),
                  ),
                ),
                // child: Icon(icon, color: Colors.grey),
              ),
      ),
    );
  }
}
