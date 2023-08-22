import 'package:flutter/material.dart';

import 'custom-list-tile.dart';

class MyTeamTabContent extends StatelessWidget {
  const MyTeamTabContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTileWidget(
              title: Text('Hazem Mohamed'),
              subtitle: Text('Front-End Developer'),
              iconData: Icons.arrow_forward_ios_outlined,
              backgroundImage: AssetImage('assets/images/note-taking.png'),
              maxRaduis: 30,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.withOpacity(.2),
            ),
          ],
        );
      },
    );
  }
}
