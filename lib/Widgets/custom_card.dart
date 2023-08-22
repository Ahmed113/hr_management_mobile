import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_management_mobile/Widgets/custom_text.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
    required this.backgroundImage,
    required this.text,
  });

  final ImageProvider<Object> backgroundImage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        side: BorderSide(color: Colors.black.withOpacity(.1)),
      ),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 25,
            minRadius: 15,
            backgroundImage: backgroundImage,
          ),
          SizedBox(
            height: 8,
          ),
          CustomText(
            text: text,
            fontSize: 13.sp,
            color: Colors.black.withOpacity(.5),
          ),
        ],
      ),
    );
  }
}
