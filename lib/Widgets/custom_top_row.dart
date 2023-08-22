import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatelessWidget {
  CustomRow({
    super.key,
    required this.title,
    required this.textDirection,
    required this.iconData,
    required this.mainAxisAlignment,
    this.onPress,
    this.width,
  });

  final String title;
  final TextDirection? textDirection;
  final IconData iconData;
  final MainAxisAlignment mainAxisAlignment;
  final VoidCallback? onPress;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      textDirection: textDirection,
      children: [
        InkWell(
          onTap: onPress,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.black.withOpacity(.2),
                )),
            child: Icon(
              iconData,
            ),
          ),
        ),
        // Spacer(flex: 1,),
        mainAxisAlignment != MainAxisAlignment.spaceBetween
            ? SizedBox(
                width: width,
              )
            : Spacer(
                flex: 1,
              ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        if (mainAxisAlignment == MainAxisAlignment.spaceBetween &&
            textDirection == TextDirection.ltr)
          Spacer(
            flex: 1,
          )
      ],
    );
  }
}
