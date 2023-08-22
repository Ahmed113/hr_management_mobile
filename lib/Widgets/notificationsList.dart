import 'package:flutter/material.dart';

import 'custom-list-tile.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15, right: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 33),
                    child: CircleAvatar(
                      maxRadius: 5,
                      backgroundColor: Colors.deepOrange,
                    ),
                  ),
                  Expanded(
                    child: ListTileWidget(
                      title: Row(
                        children: [
                          Expanded(
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                  text: 'Yousef Mohamed Sayed',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    height: 2,
                                  ),
                                  children: [
                                    TextSpan(
                                        text:
                                            ' has submitted a work from home request',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            wordSpacing: 1,
                                            fontSize: 15,
                                            height: 1.5)),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        '06 Aug 2023',
                        style: TextStyle(
                            color: Colors.blueGrey.withOpacity(.5),
                            height: 2,
                            fontSize: 12),
                      ),
                      backgroundImage: AssetImage('assets/images/download.jpg'),
                      maxRaduis: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.withOpacity(.5),
        ),
      ],
    );
  }
}
