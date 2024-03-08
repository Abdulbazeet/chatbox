import 'package:chatbox/common/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const String routeName = '/main-page';

  @override
  State<MainPage> createState() => _MainPageState();
}

int currentIndex = 0;

class _MainPageState extends State<MainPage> {
  void selectPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        currentIndex: currentIndex,
        onTap: (value) => selectPage(value),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 22.sp,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            label: 'Message',
            activeIcon: SizedBox(
                height: 20.sp,
                //width: 24.sp,
                child: Image.asset(
                  'assets/message-circle-dots-svgrepo-com.png',
                  color: Colors.green,
                )),
            icon: SizedBox(
                height: 20.sp,
                //width: 24.sp,
                child: Image.asset(
                  'assets/message-circle-dots-svgrepo-com.png',
                  color: Colors.grey,
                )),
          ),
          BottomNavigationBarItem(
            label: 'Calls',
            activeIcon: SizedBox(
              height: 22.sp,
              //width: 24.sp,
              child: Image.asset('assets/call-calling-svgrepo-com.png',
                  color: Colors.green),
            ),
            icon: SizedBox(
              height: 22.sp,
              //width: 24.sp,
              child: Image.asset('assets/call-calling-svgrepo-com.png',
                  color: Colors.grey),
            ),
          ),
          const BottomNavigationBarItem(
            label: 'Contacts',
            activeIcon: Icon(
              Icons.person_2,
              color: Colors.green,
            ),
            icon: Icon(
              Icons.person_2,
              color: Colors.grey,
            ),
          ),
          const BottomNavigationBarItem(
            label: 'Settings',
            activeIcon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          ),
          // BottomNavigationBarItem(
          //   label: 'Message',
          //   icon: Icon(Icons.message),
          // ),
        ],
      ),
    );
  }
}
