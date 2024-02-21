import 'package:chatbox/features/auth/screens/signUp.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});
  static const String routeName = '/logIn-screen';

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                    'Log in to Chatbox',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Text(
                    'Welcome back! Sign in with your social \faccount or email to continue as',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(
                            30.sp,
                          ),
                        ),
                        child: Container(
                          height: 30.sp,
                          width: 30.sp,
                          // padding: EdgeInsets.all(10.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              30.sp,
                            ),
                          ),
                          child: Image.asset('assets/facebook-svgrepo-com.png'),
                        ),
                      ),
                      SizedBox(width: 20.sp),
                      Container(
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(
                            30.sp,
                          ),
                        ),
                        child: Container(
                          height: 27.sp,
                          width: 27.sp,
                          // padding: EdgeInsets.all(10.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              30.sp,
                            ),
                          ),
                          child: Image.asset('assets/google-svgrepo-com.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    children: [
                      const Expanded(child: Divider(color: Colors.grey)),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      )
                    ],
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
                      // errorStyle: TextStyle(
                      //   color: Colors.red,
                      //   fontSize: 11.sp,
                      // ),
                      label: const Text(
                        'Your email',
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
                        'Password',
                      ),
                      error: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Invalid password',
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
                    height: 40.sp,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                      double.infinity,
                      35.sp,
                    )),
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot passwword?',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 10.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
