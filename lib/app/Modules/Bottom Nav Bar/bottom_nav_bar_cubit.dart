import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hr_management_mobile/app/Modules/requests/requests-page.dart';

import 'attendance/attendance-page.dart';
import 'home/home-page.dart';
import 'more/more-page.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  int selectedIndex = 0;
  List<Widget> screens = [
    HomePage(),
    RequestsPage(),
    AttendancePage(),
    MorePage()
  ];

  void changeBottomNavBarIndex({required int newIndex}) {
    selectedIndex = newIndex;
    print("What is Selected Index $selectedIndex");
    emit(BottomNavBarChangeIndex());
  }
}
