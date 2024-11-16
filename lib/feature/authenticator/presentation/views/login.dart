import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/forget_password.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/register.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/hyperlinkTempl.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/home_view.dart';

import '../../../../core/widget/ButtonTempl.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 75,
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: 76.h, left: 60.w, right: 80.w, bottom: 32.h),
              child: Container(
                  height: 120.h,
                  width: 520.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(logo_t))))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: 342.w,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black12),
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Phone Number",
                    style: Styles.comfortaa16Bold,
                  ),
                  //a widget TextFormTempl will be for all text fields
                  //we can pass text and icon
                  const TextFormTempl(
                    textInside: "Enter your Phone number",
                    iconInside: Icons.phone,
                    showPassword: false,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    "Password",
                    style: Styles.comfortaa16Bold,
                  ),
                  //a widget TextFormTempl will be for all text fields
                  const TextFormTempl(
                    textInside: "Enter your Password",
                    iconInside: Icons.lock_outline_rounded,
                    showPassword: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MouseRegion(
                        cursor:
                            SystemMouseCursors.click, // Hand pointer on hover
                        child: InkWell(
                          onTap: () {
                            // Navigate to SecondPage on tap
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgetPassword()),
                            );
                          },
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration
                                  .underline, // Make it look like a hyperlink
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kHomepage);
                    },
                    child: const ButtonTempl(
                      text: "LOGIN",
                      page: HomeView(),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),

                  const Center(
                      child: HyperlinkTempl(
                          textBefore: "Don’t have an account? ",
                          textLink: "Sign UP",
                          page: Register())),

                  const SizedBox(height: 29)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  // testing
}
