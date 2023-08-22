import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_management_mobile/Widgets/custom_tab_bar.dart';
import 'package:hr_management_mobile/Widgets/custom_top_row.dart';

import '../../../../Widgets/attendance_card.dart';
import '../../../../Widgets/attendance_list.dart';

class AttendancePage extends StatefulWidget {
  AttendancePage({Key? key}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  List<Tab> tabsList = [
    const Tab(
      text: 'My Attendance',
    ),
    const Tab(
      text: 'Employees',
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // alignment: Alignment.center,
          padding: EdgeInsets.only(top: 45, left: 20, right: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              padding: EdgeInsets.only(bottom: 120),
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                CustomRow(
                  title: 'Attendance',
                  textDirection: TextDirection.rtl,
                  iconData: Icons.assignment_outlined,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                CustomTabBar(
                  tabController: _tabController,
                  tabsList: tabsList,
                  tabBarMargin: EdgeInsets.symmetric(vertical: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.calendar_month_sharp,
                        color: Colors.indigoAccent,
                      ),
                      SizedBox(
                        width: width * .013,
                      ),
                      Text(
                        'August 2023',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 155.sp,
                      height: 165.sp,
                      child: AttendanceCard(),
                    ),
                    SizedBox(
                      width: 8.sp,
                    ),
                    SizedBox(
                      width: 155.sp,
                      height: 165.sp,
                      child: AttendanceCard(),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return AttendanceList();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
