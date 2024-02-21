import 'package:chatbox/screens/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String routeName = '/signup-screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            20.sp,
          ),
          child: SingleChildScrollView(
            child: SizedBox(
              height: 100.h,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SIgnUp with Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Text(
                    'Get chatting with friends and family today by \fsigning up for our chat app!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      error: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Invalid email address',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      label: const Text(
                        'Your name',
                      ),
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: const Text(
                        'Your email',
                      ),
                      error: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Invalid email',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      // errorStyle: TextStyle(
                      //   color: Colors.red,
                      //   fontSize: 11.sp,
                      // ),
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      error: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Invalid email address',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      label: const Text(
                        'Password',
                      ),
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      error: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Invalid email address',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      label: const Text(
                        'Confirm Password',
                      ),
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  // const Spacer(),
                  SizedBox(height: 40.sp),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                      double.infinity,
                      35.sp,
                    )),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, MainPage.routeName, (route) => false);
                    },
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
