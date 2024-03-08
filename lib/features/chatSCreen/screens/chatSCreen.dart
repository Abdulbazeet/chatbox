import 'package:chatbox/common/widgets/date.dart';
import 'package:chatbox/common/widgets/receiver.dart';
import 'package:chatbox/common/widgets/sender.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChatSCreen extends StatefulWidget {
  const ChatSCreen({super.key});
  static const String routeName = '/chat-screen';

  @override
  State<ChatSCreen> createState() => _ChatSCreenState();
}

class _ChatSCreenState extends State<ChatSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 1.sp,
        backgroundColor: Colors.white,
        titleSpacing: 1.sp,
        title: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 0.sp,
          ),
          leading: CircleAvatar(
            backgroundImage: const NetworkImage(
                'https://images.unsplash.com/photo-1709642717827-9621f2a978a1?w=300&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8'),
            radius: 20.sp,
          ),
          title: Text(
            'BalogunAbdulbazeet',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Active now',
            style: TextStyle(
              fontSize: 8.sp,
              color: Colors.grey,
            ),
          ),
          trailing: SizedBox(
              width: 68.sp,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone_in_talk_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.videocam_rounded,
                        color: Colors.grey,
                      ))
                ],
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.sp,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10.sp,
              ),
              Center(child: Date()),
              SizedBox(
                height: 10.sp,
              ),
              SizedBox(width: double.infinity, child: Sender()),
              SizedBox(width: double.infinity, child: Receiver())
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 10.sp, bottom: 25.sp),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.attach_file,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 10.sp,
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.sp, vertical: 0.sp),
                  height: 30.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: const Color.fromARGB(255, 230, 240, 248),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: TextField(
                          maxLines: 500,
                          style: TextStyle(color: Colors.black, fontSize: 8.sp),
                          decoration: const InputDecoration(
                              hintText: 'Write your message',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        )),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.copy))
                      ]),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.mic))
            ],
          )),
    );
  }
}
