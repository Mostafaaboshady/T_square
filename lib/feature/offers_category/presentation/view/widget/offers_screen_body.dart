import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/offers_category/presentation/view/widget/gridview_offers.dart';
import 'package:shaghaf_room/feature/offers_category/presentation/view/widget/offers_appbar.dart';

class OffersScreenBody extends StatelessWidget {
  const OffersScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: OffersAppbar()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(child: GridviewOffers()),
        ],
      ),
    ));
  }
}
