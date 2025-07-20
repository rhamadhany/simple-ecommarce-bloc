import 'package:flutter/material.dart';

class ButtonModelAdmin extends StatelessWidget {
  const ButtonModelAdmin({
    super.key,
    required this.icons,
    required this.onTap,
    required this.title,
  });

  final Function() onTap;
  final String title;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icons, color: Colors.white),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
