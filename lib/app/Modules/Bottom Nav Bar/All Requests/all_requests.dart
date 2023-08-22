import 'package:flutter/material.dart';
import 'package:hr_management_mobile/Widgets/custom_text_field.dart';
import 'package:hr_management_mobile/Widgets/custom_top_row.dart';

import '../../../../Widgets/custom_card.dart';
import '../../../../Widgets/custom_expansion_tile_widget.dart';

class AllRequests extends StatelessWidget {
  const AllRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              shrinkWrap: true,
              children: [
                CustomRow(
                  title: 'All Requests',
                  onPress: () {
                    Navigator.pop(context);
                  },
                  textDirection: TextDirection.ltr,
                  iconData: Icons.arrow_back_ios_new_rounded,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.withOpacity(.5),
                    size: 30,
                  ),
                  hint: 'Search a specific request',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomExpansionTile(
                    title: 'Attendance Requests',
                    expansionTileChildren: [
                      GridView.builder(
                          padding: const EdgeInsets.all(8),
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 5,
                                  childAspectRatio: 1.2),
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const CustomCardWidget(
                                backgroundImage:
                                    AssetImage('assets/images/note-taking.png'),
                                text: 'data');
                          })
                    ]),
                const SizedBox(
                  height: 16,
                ),
                CustomExpansionTile(
                    title: 'Vacation Requests',
                    expansionTileChildren: [
                      GridView.builder(
                          padding: const EdgeInsets.all(8),
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 5,
                                  childAspectRatio: 1.2),
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const CustomCardWidget(
                                backgroundImage:
                                    AssetImage('assets/images/note-taking.png'),
                                text: 'data');
                          })
                    ]),
                const SizedBox(
                  height: 16,
                ),
                CustomExpansionTile(title: 'Others', expansionTileChildren: [
                  GridView.builder(
                      padding: const EdgeInsets.all(8),
                      physics: const ScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 5,
                              childAspectRatio: 1.2),
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const CustomCardWidget(
                            backgroundImage:
                                AssetImage('assets/images/note-taking.png'),
                            text: 'data');
                      })
                ]),
                const SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
