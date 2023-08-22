import 'package:flutter/cupertino.dart';
import 'package:hr_management_mobile/Widgets/request_card_widget.dart';

class MyRequestsTabContent extends StatelessWidget {
  const MyRequestsTabContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context, index){
          return RequestCardWidget(
            cardMargin: EdgeInsets.symmetric(vertical: 10),
          );
        });
  }
}
