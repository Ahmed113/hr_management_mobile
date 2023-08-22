import 'package:flutter/material.dart';
import 'package:hr_management_mobile/Widgets/my_requests_tabContent.dart';

import '../../../Widgets/custom_tab_bar.dart';
import '../../../Widgets/employees_requests.dart';

class RequestsPage extends StatefulWidget {
  const RequestsPage({Key? key}) : super(key: key);

  @override
  State<RequestsPage> createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  List<Tab> tabsList = [
    const Tab(
      text: 'My requests',
    ),
    const Tab(
      text: 'Employees\' requests',
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 5,
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              'Requests',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.5)),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTabBar(
              tabController: _tabController,
              tabsList: tabsList,
              tabBarMargin: EdgeInsets.symmetric(vertical: 5),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                MyRequestsTabContent(),
                EmployeesRequests(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
