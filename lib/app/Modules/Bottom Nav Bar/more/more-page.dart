import 'package:flutter/material.dart';
import 'package:hr_management_mobile/app/Modules/Bottom%20Nav%20Bar/more/Widgets/header_card.dart';
import 'package:hr_management_mobile/app/Modules/Bottom%20Nav%20Bar/more/Widgets/user_options_widget.dart';
import 'package:hr_management_mobile/app/Modules/Change%20Password/change_passwrod_screen.dart';
import 'package:hr_management_mobile/app/Modules/My Leaves/my_Leaves.dart';
import 'package:hr_management_mobile/app/Modules/employee_directory/employee_directory.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'More',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const MoreHeaderCard(),
              const SizedBox(
                height: 24,
              ),
              UserOptions(
                  title: 'Employee Directory',
                  userOptionIcon: Icons.share,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmployeeDirectory()));
                  }),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                  title: 'My Profile',
                  userOptionIcon: Icons.person,
                  onPress: () {}),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                  title: 'Change Password',
                  userOptionIcon: Icons.lock,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePasswordScreen()));
                  }),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                title: 'Payslip',
                userOptionIcon: Icons.wallet,
                onPress: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                title: 'My Leaves',
                userOptionIcon: Icons.calendar_month,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyLeaves()));
                },
              ),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                title: 'Transfer Requests',
                userOptionIcon: Icons.compare_arrows_sharp,
                onPress: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                title: 'Bill Payment',
                userOptionIcon: Icons.payments_outlined,
                onPress: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                title: 'Calendar',
                userOptionIcon: Icons.calendar_today,
                onPress: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                title: 'Language',
                userOptionIcon: Icons.language,
                onPress: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              UserOptions(
                title: 'About Paynas',
                userOptionIcon: Icons.bookmark_add_outlined,
                onPress: () {},
              ),
              const SizedBox(
                height: 32,
              ),
              const Center(
                child: Text(
                  'Version 4.2 (24)',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Container(
                  width: 340,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Log out',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
