import 'package:flutter/material.dart';
import 'package:hr_management_mobile/Widgets/custom_top_row.dart';

import '../../../Widgets/notificationsList.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 35,
              left: 15,
              right: 25,
            ),
            child: CustomRow(
              title: 'Notifications',
              onPress: () {
                Navigator.pop(context);
              },
              textDirection: TextDirection.ltr,
              iconData: Icons.arrow_back_ios_new,
              mainAxisAlignment: MainAxisAlignment.start,
              width: width * .25,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return NotificationsList();
              },
            ),
          ),
        ],
      ),
    );
  }
}
