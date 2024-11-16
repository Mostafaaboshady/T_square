import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/forget_password.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/login.dart';
import 'package:shaghaf_room/core/widget/ButtonTempl.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/hyperlinkTempl.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//this class is still under implementation
// I just added some code and one widget textFormImpli
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.all(5.0),
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
                    iconInside: Icons.phone_in_talk_outlined,
                    showPassword: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    " User Name",
                    style: Styles.comfortaa16Bold,
                  ),
                  //a widget TextFormTempl will be for all text fields
                  const TextFormTempl(
                    textInside: "Enter your Name",
                    iconInside: Icons.perm_identity_outlined,
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

                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Confirm Password",
                    style: Styles.comfortaa16Bold,
                  ),
                  const TextFormTempl(
                      textInside: "Confirm Password",
                      iconInside: Icons.lock_outline_rounded,
                      showPassword: true),

                  const ButtonTempl(
                    text: "Sign UP",
                    page: ForgetPassword(),
                  ),

                  //link under button move to Sign in page
                  const Center(
                      child: HyperlinkTempl(
                          textBefore: "Already have an account? ",
                          textLink: "Sign In",
                          page: login())),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
