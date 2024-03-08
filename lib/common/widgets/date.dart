import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Date extends StatelessWidget {
  const Date({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 4.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Color.fromARGB(255, 237, 244, 249),
      ),
      child: Text(
        'Today',
        style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
