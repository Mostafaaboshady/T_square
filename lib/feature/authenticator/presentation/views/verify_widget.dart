import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/core/widget/ButtonTempl.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/home_view.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});
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
            child: Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black12,
                ),
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Enter Verification Code",
                      style: Styles.comfortaa20semi
                          .copyWith(color: const Color(0xff101623)),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Enter code that we have sent to your number 01012494416",
                      style: Styles.comfortaa14,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    OtpTextField(
                      numberOfFields: 6,
                      borderColor: Color(0xffF04C29),
                      borderWidth: 2,
                      showFieldAsBox: false,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter
                            .digitsOnly, // هيقبل الأرقام بس
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      fieldWidth: 32, // استخدام خط تحت كل حقل
                      textStyle: TextStyle(color: Color(0xffcc1b24)),
                      keyboardType: TextInputType.number,
                      focusedBorderColor: Color(0xffcc1b24),
                      enabledBorderColor: Color(0xffcc1b24),
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        // ال هيتم عند إدخال جميع الرموز
                        print("Verification Code: $verificationCode");
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    const ButtonTempl(
                      text: "Verify",
                      page: HomeView(),
                    ),
                    const SizedBox(
                      height: 39,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
