import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_management_mobile/Widgets/custom_text.dart';
import 'package:hr_management_mobile/app/Modules/notifications/notification_page.dart';
import 'package:hr_management_mobile/app/Modules/request_annual_Leave/AnnualRequestLeave.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';

import '../../../../Widgets/custom_card.dart';
import '../../../../Widgets/request_card_widget.dart';
import '../All Requests/all_requests.dart';
import '../bottom_nav_bar_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: width,
              height: height * .62,
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          child: Image.asset(
                            'assets/images/download.jpg',
                            width: width * .128,
                            height: height * .062,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NotificationsScreen()));
                          },
                          child: Container(
                            width: width * .128,
                            height: height * .062,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Icon(
                              Icons.notifications,
                              size: 35,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Hi',
                          fontSize: 18,
                          color: Colors.white30,
                        ),
                        CustomText(
                            text: 'Abdelrahman',
                            fontSize: 26.sp,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                        Row(
                          children: [
                            Text(
                              'Shehata ...',
                              style: TextStyle(
                                  fontSize: 26.sp,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            Text(
                              "👋",
                              style: TextStyle(
                                  fontFamily: 'NotoEmoji', fontSize: 25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SemicircularIndicator(
                              radius: width * .38,
                              progress: 0,
                              strokeWidth: width * .045,
                              backgroundColor: Colors.white,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 48,
                                  ),
                                  CustomText(
                                    text: 'Start your date',
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  CustomText(
                                      text: '00:00',
                                      color: Colors.white,
                                      fontSize: 40.sp),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                        color:
                                            Colors.amberAccent.withOpacity(.6),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: CustomText(
                                      text: 'You haven\'t checked-in yet',
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Center(
                              child: Container(
                                width: width * .87,
                                height: height * .062,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: CustomText(
                                      text: 'Check-In',
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CustomText(
                    text: 'Quick Requests',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllRequests()));
                    },
                    child: CustomText(
                        text: 'View All',
                        color: Colors.blueAccent,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .18,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnnualRequestLeave()));
                    },
                    child: Container(
                      width: width * .27,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCardWidget(
                        backgroundImage:
                            AssetImage('assets/images/note-taking.png'),
                        text: 'data',
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CustomText(
                    text: 'My Requests',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
                    builder: (context, state) {
                      var cubit = BlocProvider.of<BottomNavBarCubit>(context);
                      return InkWell(
                        onTap: () {
                          cubit.changeBottomNavBarIndex(newIndex: 1);
                        },
                        child: Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const RequestCardWidget(
              cardMargin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            ),
            const RequestCardWidget(
              cardMargin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            ),
            // Need To Add Team Attendance
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CustomText(
                    text: 'My Payslip',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              margin: EdgeInsets.only(bottom: 20),
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(
                    color: Colors.black.withOpacity(.1),
                  ),
                ),
                child: Center(
                    child: CustomText(
                  text: 'No Payslip',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
