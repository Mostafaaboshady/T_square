import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/offers_category/presentation/view/widget/offers_contaniar.dart';

class GridviewOffers extends StatelessWidget {
  const GridviewOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 22),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10, crossAxisSpacing: 0, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return const OffersContaniar();
            },
            itemCount: 10),
      ),
    );
  }
}
