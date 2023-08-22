import 'package:flutter/material.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        side: BorderSide(color: Colors.black.withOpacity(.1)),
      ),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/note-taking.png', width: width * .2),
          SizedBox(
            height: height * .01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.4)),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'Days',
                style: TextStyle(fontSize: 16, height: 2),
              ),
            ],
          ),
          SizedBox(
            height: height * .018,
          ),
          Text(
            'Absent Days',
            style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
