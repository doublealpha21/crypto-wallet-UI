import 'package:crypto_ui/home_page.dart';
import 'package:crypto_ui/profile_page.dart';
import 'package:crypto_ui/wallet_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      const HomePage(),
      const WalletPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Page'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile'),
        ],
      ),
      body: widgets.elementAt(selectedIndex),
    );
  }
}
