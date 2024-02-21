import 'package:chatbox/common/widgets/slidable_widget.dart';
import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});
  static const String routeName = 'message-screen';

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 0.sp,
          ),
          child: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape:
                      const CircleBorder(side: BorderSide(color: Colors.white)),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Text(
                  'Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 11.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape:
                      const CircleBorder(side: BorderSide(color: Colors.white)),
                ),
                onPressed: () {},
                child: SizedBox.shrink()
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            0.sp,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20.sp,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.sp,
                ),
                width: 100.w,
                height: 80.sp,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            StatusView(
                              centerImageUrl: 'https://picsum.photos/200/300',
                              radius: 25.sp,
                              padding: 4.sp,
                              indexOfSeenStatus: 2,
                              strokeWidth: 1.sp,
                              numberOfStatus: 5,
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Text(
                              'My Status',
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.white),
                            )
                          ],
                        ),
                        const Positioned(
                            bottom: 40,
                            right: 0,
                            child: Icon(
                              Icons.add_circle_outlined,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(width: 10.sp),
                    SizedBox(
                      width: 209.sp,
                      child: ListView.builder(
                        itemCount: 17,
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.sp),
                            child: Column(
                              children: [
                                StatusView(
                                  centerImageUrl:
                                      'https://picsum.photos/200/300',
                                  radius: 25.sp,
                                  padding: 4.sp,
                                  indexOfSeenStatus: 2,
                                  strokeWidth: 1.sp,
                                  numberOfStatus: 5,
                                ),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Text(
                                  'Adil',
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Colors.white),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                width: 100.w,
                height: 394.8.sp,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.sp,
                  ).copyWith(
                    top: 15.sp,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(
                            top: 15.sp,
                          ),
                          child: Sliddable());
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
