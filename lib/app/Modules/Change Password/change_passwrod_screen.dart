import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_management_mobile/Widgets/custom_text_field.dart';
import 'package:hr_management_mobile/Widgets/custom_top_row.dart';
import 'package:hr_management_mobile/app/Modules/Change%20Password/change_password_cubit.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
            builder: (context, state) {
              var cubit = BlocProvider.of<ChangePasswordCubit>(context);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  CustomRow(
                    title: 'Change Password',
                    onPress: () {
                      Navigator.pop(context);
                    },
                    textDirection: TextDirection.ltr,
                    iconData: Icons.arrow_back_ios_new_rounded,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CustomTextField(
                    hint: 'Current Password',
                    obSecureText: cubit.currentObSecurePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        cubit.changeObSecureField(changeCase: 'current');
                      },
                      icon: Icon(cubit.currentObSecurePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CustomTextField(
                    hint: 'New Password',
                    obSecureText: cubit.newObSecurePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        cubit.changeObSecureField(changeCase: 'new');
                      },
                      icon: Icon(cubit.newObSecurePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CustomTextField(
                    hint: 'Confirm Password',
                    obSecureText: cubit.confirmObSecurePassword,
                    suffixIcon: IconButton(
                      onPressed: () {
                        cubit.changeObSecureField(changeCase: 'confirm');
                      },
                      icon: Icon(cubit.confirmObSecurePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
