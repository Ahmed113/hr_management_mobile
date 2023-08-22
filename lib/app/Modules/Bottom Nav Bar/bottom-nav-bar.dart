import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottom_nav_bar_cubit.dart';

class BottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<BottomNavBarCubit>(context);
        return Scaffold(
          body: cubit.screens[cubit.selectedIndex],
          bottomNavigationBar: Container(
            height: 80,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: .1,
                  )
                ]),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: true,
                currentIndex: cubit.selectedIndex,
                onTap: (int newIndex) {
                  cubit.changeBottomNavBarIndex(newIndex: newIndex);
                },
                selectedItemColor: Colors.indigo,
                unselectedItemColor: Colors.grey,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      size: 35.sp,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.man_sharp,
                      size: 35.sp,
                    ),
                    label: 'Requests',
                    backgroundColor: Colors.white,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.pending_actions,
                      size: 35.sp,
                    ),
                    label: 'Attendance',
                    backgroundColor: Colors.white,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.list,
                      size: 35.sp,
                    ),
                    label: 'More',
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
