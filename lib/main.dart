import 'package:coffee_masters/data_manager.dart';
import 'package:coffee_masters/pages/menu_page.dart';
import 'package:coffee_masters/pages/orders_page.dart';
import 'pages/offers_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dataManager = DataManager();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var navigationBar = NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.coffee), label: 'Menu'),
        NavigationDestination(icon: Icon(Icons.local_offer), label: 'Offers'),
        NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Order'),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 2,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Image.asset("images/logo.png", height: 32),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          MenuPage(dataManager: dataManager),
          const OffersPage(),
          OrdersPage(dataManager: dataManager),
        ],
      ),
      bottomNavigationBar: navigationBar,
    );
  }
}
