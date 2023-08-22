import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required TabController tabController,
    required this.tabsList,
    required this.tabBarMargin,
  }) : _tabController = tabController;

  final TabController _tabController;
  final List<Tab> tabsList;
  final EdgeInsetsGeometry tabBarMargin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: tabBarMargin,
      // padding: EdgeInsets.symmetric(vertical: 3),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey[350]?.withOpacity(.5),
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: TabBar(
        padding: EdgeInsets.all(2),
        controller: _tabController,
        // give the indicator a decoration (color and border radius)
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
          color: Colors.white,
        ),
        labelColor: Colors.blueAccent,
        unselectedLabelColor: Colors.black,
        tabs:  tabsList,
      ),
    );
  }
}