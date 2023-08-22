import 'package:flutter/material.dart';

class EmployeesRequests extends StatelessWidget {
  const EmployeesRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/note-taking.png'),
            SizedBox(
              height: 15,
            ),
            Text('No requests yet',
            style: TextStyle(
              color: Colors.black.withOpacity(.5)
            ),)
          ],
        ),
      ),
    );
  }
}
