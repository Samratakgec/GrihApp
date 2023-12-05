//import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:grihapp/Screens/buy.dart';
import 'package:grihapp/Screens/sell.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  List<Widget> tabs = [
    const Tab(
      text: 'Buy',
    ),
    const Tab(
      text: 'Sell',
    )
  ];
  // ignore: unused_field
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('GrihApp'),
            bottom: TabBar(tabs: tabs),
          ),
          body: const TabBarView(children: [Buy(), Sell()]),
        ));
  }
}
