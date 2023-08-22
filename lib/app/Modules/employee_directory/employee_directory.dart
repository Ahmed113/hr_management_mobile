import 'package:flutter/material.dart';
import 'package:hr_management_mobile/Widgets/custom_tab_bar.dart';
import 'package:hr_management_mobile/Widgets/custom_text_field.dart';

import '../../../Widgets/custom_top_row.dart';
import '../../../Widgets/my_team_tabContent.dart';

class EmployeeDirectory extends StatefulWidget {
  const EmployeeDirectory({Key? key}) : super(key: key);

  @override
  State<EmployeeDirectory> createState() => _EmployeeDirectoryState();
}

class _EmployeeDirectoryState extends State<EmployeeDirectory>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<Tab> tabsList = [
    const Tab(
      text: 'My Team',
    ),
    const Tab(
      text: 'All Employees',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: Column(
        children: [
          CustomRow(
            title: 'Employee Directory',
            textDirection: TextDirection.ltr,
            iconData: Icons.arrow_back_ios_new,
            onPress: () {
              Navigator.pop(context);
            },
            mainAxisAlignment: MainAxisAlignment.start,
            width: 100,
          ),
          CustomTabBar(
            tabController: _tabController,
            tabsList: tabsList,
            tabBarMargin: EdgeInsets.symmetric(vertical: 15),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            margin: EdgeInsets.only(bottom: 10),
            height: 50,
            child: CustomTextField(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.withOpacity(.5),
                size: 30,
              ),
              hint: 'Search an employee',
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                MyTeamTabContent(),
                MyTeamTabContent(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
