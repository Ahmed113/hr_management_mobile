import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class RequestCardWidget extends StatelessWidget {
  const RequestCardWidget({
    super.key,
    required this.cardMargin,
  });

  final EdgeInsetsGeometry? cardMargin;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: cardMargin,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        side: BorderSide(
          color: Colors.black.withOpacity(.1), //<-- SEE HERE
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: CustomText(
                        text: 'Work From Home',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Approved',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(.3),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(.2),
                      width: 1,
                      // strokeAlign: BorderSide.strokeAlignOutside
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '1',
                        style: TextStyle(color: Colors.black.withOpacity(.5)),
                      ),
                      Text(
                        'Days',
                        style: TextStyle(color: Colors.black.withOpacity(.5)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 15,
                  color: Colors.black.withOpacity(.5),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  '06 Aug 2023',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
                Spacer(
                  flex: 5,
                ),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  color: Colors.black.withOpacity(.5),
                ),
                Spacer(
                  flex: 5,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 15,
                  color: Colors.black.withOpacity(.5),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  '06 Aug 2023',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            height: 90,
            child: ListTile(
              title: Center(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CustomText(
                    text: 'Cancel',
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(.1), //<-- SEE HERE
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
