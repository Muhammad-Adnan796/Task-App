import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/screens/appoinment_page.dart';
import 'package:task_app/screens/custom_button.dart';
import 'package:task_app/screens/responsive_ui.dart';

class LoginLoading extends StatefulWidget {
  const LoginLoading({Key? key}) : super(key: key);

  @override
  State<LoginLoading> createState() => _LoginLoadingState();
}

class _LoginLoadingState extends State<LoginLoading> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const AppointmentScreen(),),),);
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: const LoginLoadingA(),
          desktop: const LoginLoadingA(),
          tablet: const LoginLoadingA(),
        ),
      ),
    );
  }
}

class LoginLoadingA extends StatefulWidget {
  const LoginLoadingA({Key? key}) : super(key: key);

  @override
  State<LoginLoadingA> createState() => _LoginLoadingAState();
}

class _LoginLoadingAState extends State<LoginLoadingA> {


  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;



    Widget text(String textlogin) {
      return Padding(
        padding: const EdgeInsets.only( left: 68, right: 200),
        child: Text(
          textlogin,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: const Color(0xFFC4C4C4),
          ),
        ),
      );
    }
    Widget container(Icon icon) {
      return Container(
        width: 660.w,
        height: 27.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(119.5.r),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 1, bottom: 2),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(119.5.r),
            ),
            width: 657.w,
            height: 26.h,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 3.h),
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: icon,
                    ),
                    border: const OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ),
        ),
      );
    }
    return Container(

      child: Stack(

        fit: StackFit.expand,
        children: [
          const Image(
            fit: BoxFit.fill,
            image: AssetImage("assets/background.jpg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Expanded(
              child: Container(
                height: mediaQueryHeight,
                color: Colors.white.withOpacity(0.6),
                child: Column(
                  children: [
                    SizedBox(
                      height: mediaQueryHeight*0.05,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 140.w, right: 140.w,),
                      child: Image(
                        height: mediaQueryHeight * 0.2,
                        width: mediaQueryWidth * 0.6,
                        image: const AssetImage("assets/login_title_pic.png"),
                      ),
                    ),
                    Text(
                      "Login",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 48,
                          color: const Color(0xFF444444)),
                    ),
                    Text(
                      "Please enter Phone Number and password",
                      style: GoogleFonts.adventPro(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xFF1DBF73),
                      ),
                    ),
                    SizedBox(
                      height: mediaQueryHeight * 0.01,
                    ),
                    text("User Name / Email"),
                    container(Icon(
                      Icons.person,
                      color: Colors.white.withOpacity(0.1),
                    )),
                    // SizedBox(
                    //   height: mediaQueryHeight * 0.0001,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 120.w,
                      ),
                      child: text("Password"),
                    ),
                    container(
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 495.w, right: 20.w,),
                      child: Row(
                        children: [
                          Text(
                            "Forgot Password",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xFFC4C4C4)),
                          ),
                          Container(
                            height: mediaQueryHeight * 0.015,
                            width: mediaQueryWidth * 0.02,
                            child: const Image(
                              image: AssetImage(
                                "assets/forgot_lock.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: mediaQueryHeight * 0.01,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 200.w, right: 200.w,),
                      child: Row(
                        children: [
                          Container(
                            width: mediaQueryWidth * 0.04,
                            height: mediaQueryHeight * 0.03,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xFF1DBF73),
                            ),
                            child: const Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: mediaQueryWidth * 0.01,
                          ),
                          Text(
                            "Keep login",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.adventPro(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color(0xFFAAAAAA),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: mediaQueryHeight * 0.01,
                    ),
                    Column(
                      children: [
                        CustomButton(
                          onPressed: () {},
                          title: "Enter",
                        ),
                        SizedBox(
                          height: mediaQueryHeight * 0.002,
                        ),
                        Text(
                          "or log in with",
                          style: GoogleFonts.adventPro(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.facebook,
                                color: const Color(0xFF3B5998),
                                size: 45,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 35.w,top: 12.h),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                height: mediaQueryHeight * 0.056,
                                width: mediaQueryWidth * 0.07,
                                child: const Image(
                                  image: AssetImage("assets/google_icon.png"),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 8.w,top: 13.h),
                              child: Image(
                                height: mediaQueryHeight * 0.096,
                                width: mediaQueryWidth * 0.096,
                                image: const AssetImage("assets/tweeter_icon.png"),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account?",
                              style: GoogleFonts.adventPro(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Register",
                              style: GoogleFonts.adventPro(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: const Color(0xFF1DBF73),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.7)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 300.w, left: 345.w),
            child: Column(
              children: [
                SizedBox(
                  height: mediaQueryHeight * 0.29,
                ),
                Container(
                  child: Image(
                    // fit: BoxFit.fill,
                    height: mediaQueryHeight * 0.18,
                    width:  mediaQueryWidth * 0.3,
                    image: const AssetImage("assets/login_loading_pic.png"),
                  ),
                ),
                Text(
                  "Just wait...",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color(0xFF000000),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
