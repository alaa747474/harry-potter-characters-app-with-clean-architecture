import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterInformationRow extends StatelessWidget {
  const CharacterInformationRow(
      {super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20.sp,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).cardColor,
              fontSize: 17.sp,
            ),
          )
        ],
      ),
    );
  }
}
