import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sizer/sizer.dart';

class SLiddable2 extends StatelessWidget {
  const SLiddable2({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: ListTile(
        title: Text(
          'Alex Runnarson',
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          'How are you doing today?',
          style: TextStyle(
            fontSize: 8.sp,
            color: Colors.black,
          ),
        ),
        trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '2 mins ago',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                ),
              ),
              Text(
                '2',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                ),
              )
            ]),
        leading: CircleAvatar(
          radius: 25.sp,
        ),
      ),
    );
  }
}
