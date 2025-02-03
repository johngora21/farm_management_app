import 'package:flutter/material.dart';
import 'farm_management/farm_management_page.dart';
import 'marketplace/marketplace_page.dart';
import 'expert_support/expert_support_page.dart';
import 'financial/financial_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  final List<Widget> _pages = [
    const FarmManagementPage(),
    const MarketplacePage(),
    const ExpertSupportPage(),
    const FinancialPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.agriculture), label: 'Farm'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Market'),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Support'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Finance'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
