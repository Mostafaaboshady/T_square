import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/core/widget/location_widget.dart';
import 'package:shaghaf_room/core/widget/notificationbell_widget.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/drawer-page/drawer_body.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/Advertisement_listview.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/Categories_item.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/courses_text_widget.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: DrawerBody(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 35,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(home),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 5),
                        IconButton(
                            onPressed: () {
                              scaffoldKey.currentState!.openDrawer();
                            },
                            icon: Icon(Icons.filter_list, color: kPrimaryred)),
                        Image(
                            width: 140, height: 50, image: AssetImage(logo_t)),
                        SizedBox(width: 5),
                        NotificationbellWidget(),
                        SizedBox(width: 5),
                      ]),
                  SizedBox(height: 70),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CoursesTextWidget(),
          ),
          SliverToBoxAdapter(
            child: AdvertisementListview(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 22, bottom: 30, top: 30, right: 190),
              child: Text(
                "Categories",
                style: Styles.comfortaa20semi
                    .copyWith(fontWeight: FontWeight.w900, fontSize: 25),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CategoriesItem(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          )
        ],
      ),
    );
  }
}
