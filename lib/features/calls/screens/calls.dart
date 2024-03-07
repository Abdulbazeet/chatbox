import 'package:chatbox/common/widgets/slidable_widget2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});
  static const String routeName = '/calls-page';

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(side: BorderSide(color: Colors.white)),
              backgroundColor: Colors.black,
            ),
            onPressed: () {},
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: Text(
            'Calls',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11.sp,
              fontWeight: FontWeight.bold,
            ),
          )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(side: BorderSide(color: Colors.white)),
              backgroundColor: Colors.black,
            ),
            onPressed: () {},
            child: const Icon(
              Icons.phone,
              color: Colors.white,
            ),
          ),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.sp,
              ),
              height: 494.8.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    25.sp,
                  ),
                  topRight: Radius.circular(
                    25.sp,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.sp,
                  ),
                  Text(
                    'Recent',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            top: 10.sp,
                          ),
                          child: SLiddable2(),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
