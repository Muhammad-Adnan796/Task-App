import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/screens/appointment_items.dart';
import 'package:task_app/screens/responsive_ui.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: const AppointmentScreenA(),
          desktop: const AppointmentScreenA(),
          tablet: const AppointmentScreenA(),
        ),
      ),
    );
  }
}

class AppointmentScreenA extends StatefulWidget {
  const AppointmentScreenA({Key? key}) : super(key: key);

  @override
  State<AppointmentScreenA> createState() => _AppointmentScreenAState();
}

class _AppointmentScreenAState extends State<AppointmentScreenA> {
  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryheight = MediaQuery.of(context).size.height;

    Widget expandedData(String listTitle, String listData) {
      return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        elevation: 20,
        shadowColor: Colors.grey,
        child: ExpansionTile(
          children: [
            Container(
              width: mediaQueryWidth * 0.9,
              height: mediaQueryheight * 0.001,
              color: Colors.grey.withOpacity(0.3),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: mediaQueryWidth * 0.2,
                  height: mediaQueryheight * 0.06,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.r)),
                    elevation: 20,
                    shadowColor: Colors.grey,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Text(
                            listData,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF000000)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.h),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              size: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: mediaQueryWidth * 0.2,
                  height: mediaQueryheight * 0.06,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.r)),
                    elevation: 20,
                    shadowColor: Colors.grey,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Text(
                            listData,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF000000)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.h),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              size: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: mediaQueryWidth * 0.2,
                  height: mediaQueryheight * 0.06,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.r)),
                    elevation: 20,
                    shadowColor: Colors.grey,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Text(
                            listData,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF000000)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.h),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              size: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: mediaQueryWidth * 0.2,
                  height: mediaQueryheight * 0.06,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.r)),
                    elevation: 20,
                    shadowColor: Colors.grey,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Text(
                            listData,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF000000)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.h),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              size: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
          trailing: Image(
            height: mediaQueryheight * 0.03,
            width: mediaQueryheight * 0.03,
            image: const AssetImage("assets/expandedicon.png"),
          ),
          title: Text(
            listTitle,
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF000000)),
          ),
        ),
      );
    }

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
                height: mediaQueryheight * 0.07,
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
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(left: 32.w, right: 47.w),
            child: Column(
              children: [
                SizedBox(
                  height: mediaQueryheight * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 15.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select device",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: const Color(0xFF223263)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppointmentsItem(),
                            ),
                          );
                        },
                        child: Text(
                          "Appointments",
                          style: GoogleFonts.adventPro(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQueryheight * 0.0001,
                ),
                expandedData("Device", "Touch"),
                SizedBox(
                  height: mediaQueryheight * 0.01,
                ),
                expandedData("Company", "Touch"),
                SizedBox(
                  height: mediaQueryheight * 0.01,
                ),
                expandedData("Model Number", "Touch"),
                SizedBox(
                  height: mediaQueryheight * 0.01,
                ),
                expandedData("Services", "Touch"),
                SizedBox(
                  height: mediaQueryheight * 0.01,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 20,
                  shadowColor: Colors.grey,
                  child: Container(
                    height: mediaQueryheight * 0.2,
                    width: mediaQueryWidth * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      maxLines: 200,
                      decoration: const InputDecoration(
                          border:
                              const OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Address :"),
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQueryheight * 0.01,
                ),
                Card(
                  child: Container(
                    height: mediaQueryheight * 0.06,
                    width: mediaQueryWidth * 0.99,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          const Color(0xFF00ACEE),
                          const Color(0xFF1DBF73),
                        ],
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      height: mediaQueryheight * 0.058,
                      width: mediaQueryWidth * 0.89,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: TextFormField(
                          autocorrect: true,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Search Near Shop",
                              hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: const Color(0xFF000000)),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double mediaQueryheight = MediaQuery.of(context).size.height;
    double mediaQuerywidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [

        Container(
          height: mediaQueryheight * 0.09,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                const Color(0xFF1DBF73),
                Color(0xFF00ACEE),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only( left:  410.w),
          child: Container(
            height: mediaQueryheight * 0.09,
            width: mediaQuerywidth * 0.15,
            child: Card(
              elevation: 20,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),),
                color: Colors.white,
                child: GradientIcon(
                  Icons.home,
                  27.0,
                  const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF00ACEE),
                      Color(0xFF1DBF73),
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}

class GradientIcon extends StatelessWidget {
  GradientIcon(
    this.icon,
    this.size,
    this.gradient,
  );

  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}
