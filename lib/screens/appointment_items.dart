import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/screens/appoinment_page.dart';
import 'package:task_app/screens/appointment_modal_class.dart';
import 'package:task_app/screens/responsive_ui.dart';

class AppointmentsItem extends StatefulWidget {
  const AppointmentsItem({Key? key}) : super(key: key);

  @override
  State<AppointmentsItem> createState() => _AppointmentsItemState();
}

class _AppointmentsItemState extends State<AppointmentsItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: const AppointmentsItemA(),
          desktop: const AppointmentsItemA(),
          tablet: const AppointmentsItemA(),
        ),
      ),
    );
  }
}

class AppointmentsItemA extends StatefulWidget {
  const AppointmentsItemA({Key? key}) : super(key: key);

  @override
  State<AppointmentsItemA> createState() => _AppointmentsItemAState();
}

class _AppointmentsItemAState extends State<AppointmentsItemA> {
  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.h),
        child: AppBar(
          shadowColor: Colors.grey.withOpacity(0.7),
          elevation: 5,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mobile_friendly,
                  color: Colors.black,
                ))
          ],
          title: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Image(
                height: mediaQueryHeight * 0.07,
                width: mediaQueryWidth * 0.9,
                image: const AssetImage("assets/login_title_pic.png")),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.apps_rounded,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 12.w, top: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Appointments",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: const Color(0xFF223263)),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 110.w),
                          child: Text(
                            "Current",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color(0xFF223263),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: const Icon(
                            Icons.location_pin,
                            size: 13,
                            color: const Color(0xFF1DBF73),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 23.w),
              child: Container(
                  height: mediaQueryHeight * 0.06,
                  width: mediaQueryWidth * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all()),
                  child: Center(
                    child: TextFormField(
                      autocorrect: true,
                      textAlign: TextAlign.left,

                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey.withOpacity(0.8),
                            )),
                          hintText: "Search",
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color(0xFF656F77),
                          ),
                          border:
                              const OutlineInputBorder(borderSide: BorderSide.none),),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(right: 425.w),
              child: Text("Near shop’s",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF191D21)
              ),
              ),
            ),
            const AppoinmentModal()
          ],
        ),
      ),
    );
  }
}
