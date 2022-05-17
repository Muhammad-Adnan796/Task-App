import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/screens/custom_button.dart';
import 'package:task_app/screens/login_loading.dart';
import 'package:task_app/screens/responsive_ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: const LoginPageA(),
          desktop: const LoginPageA(),
          tablet: const LoginPageA(),
        ),
      ),
    );
  }
}

class LoginPageA extends StatefulWidget {
  const LoginPageA({Key? key}) : super(key: key);

  @override
  State<LoginPageA> createState() => _LoginPageAState();
}

class _LoginPageAState extends State<LoginPageA> {
  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    Widget text(String textlogin) {
      return Container(
        height: mediaQueryHeight * 0.03,
        width: mediaQueryWidth * 0.5,
        child: Text(
          textlogin,
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: const Color(0xFFC4C4C4)),
        ),
      );
    }

    Widget container(Icon icon) {
      return Container(
        width: 660.w,
        height: 27.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(119.5),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF00ACEE),
              Color(0xFF1DBF73),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 1, bottom: 2),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(119.5),
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
          Container(
            color: Colors.white.withOpacity(0.9),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: mediaQueryHeight * 0.1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 4.w, style: BorderStyle.solid)),
                    height: mediaQueryHeight * 0.2,
                    width: mediaQueryWidth * 0.7,
                    child: const Image(
                      image:  AssetImage("assets/login_title_pic.png"),
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
                      color: const Color(0xFF000000),
                    ),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 100.w),
                    child: text("User Name / Email"),
                  ),
                  container(const Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
                  SizedBox(
                    height: mediaQueryHeight * 0.001,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 100.w),
                    child: text("Password"),
                  ),
                  container(
                    const Icon(
                      Icons.remove_red_eye,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: mediaQueryHeight * 0.03,
                        child: Padding(
                          padding: EdgeInsets.only(left: 520.w, top: 5.w),
                          child: Text(
                            "Forgot Password",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xFFC4C4C4)),
                          ),
                        ),
                      ),
                      Container(
                        height: mediaQueryHeight * 0.02,
                        width: mediaQueryWidth * 0.03,
                        child: const Image(
                          image: AssetImage(
                            "assets/forgot_lock.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 200.w, right: 200.w, top: 17.h),
                    child: Row(
                      children: [
                        Container(
                          height: mediaQueryHeight * 0.04,
                          width: mediaQueryWidth * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.black,
                          ),
                          child: const Icon(
                            Icons.check_rounded,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: mediaQueryWidth * 0.03,
                        ),
                        Text(
                          "Keep login",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.adventPro(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: const Color(0xFFaaaaaa)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.02,
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginLoading(),
                        ),
                      );
                    },
                    title: "Enter",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
