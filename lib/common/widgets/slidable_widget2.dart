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
        subtitle: Row(
          children: [
            Icon(
              Icons.phone_callback_outlined,
              color: Colors.green,
              size: 10.sp,
            ),
            SizedBox(
              width: 4.sp,
            ),
            Text(
              'Today, 09:20AM',
              style: TextStyle(
                fontSize: 8.sp,
              ),
            ),
          ],
        ),
        trailing: SizedBox(
          width: 70.sp,
          child: Row(children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone_in_talk_outlined,
                color: Colors.grey,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.videocam_rounded,
                  color: Colors.grey,
                ))
          ]),
        ),
        leading: CircleAvatar(
          radius: 25.sp,
        ),
      ),
    );
  }
}
