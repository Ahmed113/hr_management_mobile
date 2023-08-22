import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class AttendanceList extends StatelessWidget {
  const AttendanceList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 25),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                '1',
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              Text(
                'Thu',
                style: TextStyle(fontSize: 16.sp),
              ),
            ],
          ),
          SizedBox(
            width: width * .068,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: width * .68,
            height: width * .12,
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                CustomText(
                  text: 'Absent',
                  fontSize: 12.sp,
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.more_vert_outlined,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
