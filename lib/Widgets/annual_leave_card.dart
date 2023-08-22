import 'package:flutter/material.dart';

class AnnualLeaveCard extends StatelessWidget {
  const AnnualLeaveCard({
    super.key,
    required this.title,
    required this.content,
    required this.daysConsumed,
    required this.daysRemaining,
  });

  final String title;
  final String content;
  final int daysConsumed;
  final int daysRemaining;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.withOpacity(.2),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black.withOpacity(.6),
              fontWeight: FontWeight.bold,
              wordSpacing: 2,
            ),
          ),
          SizedBox(height: 18),
          Text(
            content,
            style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(.6),
                wordSpacing: 1,
                height: 1.5),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1, right: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                minHeight: 8,
                value: 0,
                backgroundColor: Colors.grey.withOpacity(.4),
              ),
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Text(
                '$daysConsumed Days Consumed',
                style: TextStyle(color: Colors.black.withOpacity(.5)),
              ),
              Spacer(
                flex: 1,
              ),
              Text('$daysRemaining Days Remaining',
                  style: TextStyle(color: Colors.black.withOpacity(.5))),
            ],
          )
        ],
      ),
    );
  }
}
