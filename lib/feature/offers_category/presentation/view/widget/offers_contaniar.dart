import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/widget/discount_dailog.dart';
import 'package:shaghaf_room/core/widget/offers_and_Events_con.dart';

import '../../../../../core/utils/constants.dart';

class OffersContaniar extends StatelessWidget {
  const OffersContaniar({super.key});

  @override
  Widget build(BuildContext context) {
    return  OffersAndEventsCon(
      text: 'Today’s offer',
      text2: '10% discount on 3\nhours or more',
      Image: offers_contaniarimg, onpressed: () {DiscountDialog.show(context);},
    );
  }
}
