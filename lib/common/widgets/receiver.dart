import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Receiver extends StatelessWidget {
  const Receiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 4.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp)
                .copyWith(topLeft: Radius.circular(0.sp)),
            color: const Color.fromARGB(255, 100, 209, 104),
          ),
          child: Text(
            'Hello, Balogun Abdulbazeet',
            maxLines: 1000000,
            style: TextStyle(
                color: Colors.white,
                fontSize: 8.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Text(
          '09:25am',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 7.sp,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
