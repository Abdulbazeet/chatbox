import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SettingsSCreen extends StatefulWidget {
  const SettingsSCreen({super.key});
  static const String routeName = '/settings-screen';

  @override
  State<SettingsSCreen> createState() => _SettingsSCreenState();
}

class _SettingsSCreenState extends State<SettingsSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
        title: Text(
          'Settings',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 11.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Expanded(
                child: Container(
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.sp,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: const NetworkImage(
                          'https://images.unsplash.com/photo-1709642717827-9621f2a978a1?w=300&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8',
                        ),
                        radius: 20.sp,
                      ),
                      title: Text(
                        'Balogun Abdulbazeet',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.sp,
                        ),
                      ),
                      subtitle: Text(
                        'Never give up',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8.sp,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.qr_code,
                          )),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.key,
                          color: Colors.grey,
                        ),
                      ),
                      title: Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Privacy, security, change number',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.mark_unread_chat_alt_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      title: Text(
                        'Chat',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Chat history, themes, wallpapers',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.notifications,
                          color: Colors.grey,
                        ),
                      ),
                      title: Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Messages, groups and others',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.help_outline,
                          color: Colors.grey,
                        ),
                      ),
                      title: Text(
                        'Help',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Help center, contact us, privacy policy',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.cached,
                          color: Colors.grey,
                        ),
                      ),
                      title: Text(
                        'Storage and Data',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Network usage, storage usage',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.person_add_alt_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      title: Text(
                        'Invite a friend',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
