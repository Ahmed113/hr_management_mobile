import 'package:flutter/material.dart';

class UserOptions extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final IconData userOptionIcon;

  const UserOptions({
    super.key,
    required this.title,
    required this.onPress,
    required this.userOptionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(width: 1, color: Colors.grey.withOpacity(0.5))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(userOptionIcon),
                SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            title == 'Language'
                ? const Row(
                    children: [
                      Text(
                        'العربية',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                      )
                    ],
                  )
                : Icon(
                    Icons.arrow_forward_ios_sharp,
                  )
          ],
        ),
      ),
    );
  }
}
