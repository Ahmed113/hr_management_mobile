import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_management_mobile/app/Modules/Bottom%20Nav%20Bar/bottom_nav_bar_cubit.dart';
import 'package:hr_management_mobile/app/Modules/Bottom%20Nav%20Bar/more/user_info_cubit.dart';
import 'package:hr_management_mobile/app/Modules/Change%20Password/change_password_cubit.dart';
import 'package:hr_management_mobile/app/Modules/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavBarCubit>(
          create: (BuildContext context) => BottomNavBarCubit(),
        ),
        BlocProvider<UserInfoCubit>(
          create: (BuildContext context) => UserInfoCubit(),
        ),
        BlocProvider<ChangePasswordCubit>(
          create: (BuildContext context) => ChangePasswordCubit(),
        ),
      ],
      child: ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      ),
    );
  }
}
