import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/core/widget/ButtonTempl.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/verify_widget.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                    "Forgot Your Password ?",
                    style: Styles.comfortaa20semi
                        .copyWith(color: const Color(0xff101623)),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Enter your phone number, we will send you confirmation code",
                    style: Styles.comfortaa12,
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  Text(
                    "Phone Number",
                    style: Styles.comfortaa16Bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextFormTempl(
                    textInside: "Enter your Phone Number",
                    iconInside: Icons.phone,
                    showPassword: false,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const ButtonTempl(
                    //todo change it
                    text: "Reset Password",
                    page: Verify(),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
