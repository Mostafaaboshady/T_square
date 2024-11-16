import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart'; // للإستخدام مع Clipboard

class DiscountDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          width: 313,
          height: 216,
          child: AlertDialog(
            alignment: Alignment.center,
            title: Text(
              '40% off 10 booking (up to EGP 150)',
              style: Styles.comfortaa14,
            ),
            content: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text('"T_Square_150"', style: Styles.comfortaa12),
            ),
            actions: [
              Center(
                child: Container(
                  width: 113,
                  height: 40,
                  decoration: BoxDecoration(
                    color: kPrimaryred,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Clipboard.setData(const ClipboardData(
                        text: 'T_Square_150',
                      ));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('كود الخصم تم نسخه!')),
                      );
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Copy",
                      style: Styles.comfortaa2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
