import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sizer/sizer.dart';

class Sliddable extends StatelessWidget {
  const Sliddable({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            // An action can be bigger than the others.
            // flex: 2,
            onPressed: (context) {},
            backgroundColor: Colors.black,
            autoClose: true,

            borderRadius: BorderRadius.circular(90.sp),
            foregroundColor: Colors.white,
            icon: Icons.notifications,

            // label: 'Archive',
          ),
          SlidableAction(
            onPressed: (context) {},
            borderRadius: BorderRadius.circular(90.sp),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            // label: '',
          ),
        ],
      ),
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
