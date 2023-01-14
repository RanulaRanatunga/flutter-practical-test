import 'package:flutter/material.dart';
import 'package:practical_test/views/booking_view.dart';
import 'package:practical_test/views/find_view.dart';
import 'package:practical_test/views/menu_view.dart';
import 'package:practical_test/views/notifications_view.dart';
import 'package:practical_test/views/saved_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ///Develop by Ranula
  ///1/14/2023

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ScreensPage(),
    );
  }
}


class ScreensPage extends StatefulWidget {
  const ScreensPage({Key? key}) : super(key: key);

  @override
  State<ScreensPage> createState() => _ScreensPageState();
}

class _ScreensPageState extends State<ScreensPage> {

  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {


    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        _pageController.animateToPage(index,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOut);
      });
    }


    return Scaffold(
      body : SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: const <Widget>[
            FindView(),
            BookingView(),
            SavedView(),
            NotificationsView(),
            MenuView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Find',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Bookings',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined),
            label: 'Saved',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: 'Notifications',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Menu',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }


}

