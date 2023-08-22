import 'package:flutter/material.dart';
import 'package:hr_management_mobile/Widgets/custom_expansion_tile_widget.dart';

import '../../../Widgets/custom_card.dart';
import '../../../Widgets/custom_top_row.dart';

class MyLeaves extends StatelessWidget {
  const MyLeaves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 16, left: 15, right: 25),
                child: CustomRow(
                    title: 'My Leaves',
                    onPress: () {
                      Navigator.pop(context);
                    },
                    textDirection: TextDirection.ltr,
                    iconData: Icons.arrow_back_ios_new,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween),
              ),
              Container(
                padding: EdgeInsets.only(top: 35, left: 15, right: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new),
                        Spacer(
                          flex: 1,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              child: CircularProgressIndicator(
                                backgroundColor: Colors.grey.withOpacity(.5),
                                strokeWidth: 10,
                                value: 0,
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/note-taking.png'),
                                        radius: 25),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Annual Leave',
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '21 Days',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Remaining of 21 Days',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(.5)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 110,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCardWidget(
                        backgroundImage:
                            AssetImage('assets/images/note-taking.png'),
                        text: 'data',
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomExpansionTile(
                    title: 'Leaves History',
                    expansionTileChildren: [
                      Image.asset('assets/images/note-taking.png'),
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
