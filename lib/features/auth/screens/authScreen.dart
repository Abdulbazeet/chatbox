import 'package:chatbox/features/auth/screens/logInSreen.dart';
import 'package:chatbox/features/auth/screens/signUp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  static const String routeName = '/auth-screen';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 12, 44),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            20.sp,
          ),
          child: Column(
            children: [
              Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Connect friends",
                      style: TextStyle(
                        fontSize: 26.sp,
                      ),
                    ),
                    TextSpan(
                      text: " easily and quickly",
                      style: TextStyle(
                          fontSize: 26.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Our chat app is the perfect way to stay connected with friends and family",
                style: TextStyle(
                  fontSize: 11.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
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
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
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
                height: 30.sp,
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
                  ))
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, SignUpScreen.routeName),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                  double.infinity,
                  40.sp,
                )),
                child: Text(
                  'Sign Up with Email',
                  style: TextStyle(color: Colors.black, fontSize: 11.sp),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Existing account?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11.sp,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Navigator.pushNamed(context, LogInScreen.routeName),
                      text: ' Log in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.sp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
