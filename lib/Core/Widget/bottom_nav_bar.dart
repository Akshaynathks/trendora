import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/account_page.dart';
import 'package:trendora/Screens/cart_page.dart';
import 'package:trendora/Screens/home_screen.dart';
import 'package:trendora/Screens/order_page.dart';
import 'package:trendora/provider/bottomnav_provider.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int _selectedIndex = ref.watch(bottomNavIndexProvider);

    final List<Widget> _pages = [
      HomeScreen(),
      CartPage(),
      OrderPage(),
      AccountPage(),
    ];
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: kGreen,
        unselectedItemColor: kGrey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          ref.read(bottomNavIndexProvider.notifier).state = value;
        },
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(LucideIcons.store600, size: 30),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(LucideIcons.shoppingBasket600, size: 30),
          ),
          BottomNavigationBarItem(
            label: "My Order",
            icon: Icon(LucideIcons.shoppingBag600, size: 30),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(LucideIcons.user600, size: 30),
          ),
        ],
      ),
    );
  }
}
