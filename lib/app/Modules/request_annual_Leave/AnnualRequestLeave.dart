import 'package:flutter/material.dart';
import 'package:hr_management_mobile/Widgets/custom_text_field.dart';
import 'package:hr_management_mobile/Widgets/custom_top_row.dart';

import '../../../Widgets/annual_leave_card.dart';

class AnnualRequestLeave extends StatelessWidget {
  const AnnualRequestLeave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 16, left: 15, right: 25),
            child: CustomRow(
                title: 'Request Annual Leave',onPress: (){
                  Navigator.pop(context);
            },
                textDirection: TextDirection.ltr,
                iconData: Icons.arrow_back_ios_new,
                mainAxisAlignment: MainAxisAlignment.spaceBetween),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 25, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnnualLeaveCard(
                        title: 'Annual Leave Balance',
                        content:
                            'Annual Leave has 21 days, you should submit your leave before the start date',
                        daysConsumed: 0,
                        daysRemaining: 21,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      AnnualLeaveCard(
                        title: 'Carryovere Balance',
                        content: 'Available balance from last year',
                        daysConsumed: 0,
                        daysRemaining: 21,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 23.0),
                        child: Text(
                          'Annual Leave Date',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      CustomTextField(
                        hint: 'Choose start date',
                        suffixIcon: Icon(
                          Icons.calendar_month,
                          color: Colors.blue,
                          size: 18,
                        ),
                        boxConstraints: BoxConstraints(maxWidth: 16),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomTextField(
                        hint: 'Choose end date',
                        suffixIcon: Icon(
                          Icons.calendar_month,
                          color: Colors.blue,
                          size: 18,
                        ),
                        boxConstraints: BoxConstraints(maxWidth: 16),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomTextField(
                        hint: 'Choose end date',
                        suffixIcon: Icon(
                          Icons.calendar_month,
                          color: Colors.blue,
                          size: 18,
                        ),
                        boxConstraints: BoxConstraints(maxWidth: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                bottom: 15,
                left: 15,
                right: 25,
              ),
              width: MediaQuery.of(context).size.width,
              height: 73,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
