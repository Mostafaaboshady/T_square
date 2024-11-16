import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/forget_password.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/verify_widget.dart';
import 'package:shaghaf_room/feature/book_page/presentation/views/book_screen_view.dart';
import 'package:shaghaf_room/feature/book_page/presentation/views/widgets/PastBookingScreen.dart';
import 'package:shaghaf_room/feature/book_page/presentation/views/widgets/bottom_widget.dart';
import 'package:shaghaf_room/feature/book_page/presentation/views/widgets/clock.dart';
import 'package:shaghaf_room/feature/eventspage/events%20details/presentation/view/events_details_screen.dart';
import 'package:shaghaf_room/feature/eventspage/events%20details/presentation/view/widgets/events_details_body.dart';
import 'package:shaghaf_room/feature/eventspage/presentation/views/events_screen.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/home_view.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/order_view.dart';
import 'package:shaghaf_room/feature/offers_category/presentation/view/offers_screen.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/bottom_cheetView.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/room_page.dart';

import '../../feature/authenticator/presentation/views/login.dart';
import '../../feature/authenticator/presentation/views/register.dart';
import '../../feature/onboarding/presentation/view/onboarding.dart';

import '../../feature/splashscreen/presentation/view/splashscreen.dart';

abstract class AppRouter {
  static const KBookScreenView = "/BookScreenView";
  static const KRoomsDetails = "/BottomCheetView";
  static const kongiung = '/ongoing';
  static const KBookReviewScreen = "/BookReviewScreen";
  static const KOrdersView = '/OrdersView';
  static const kLogin = '/login';
  static const kregister = '/register';
  static const kOffers = '/offers_page';
  static const kEvents = '/events_page';
  static const kHomepage = '/Homepage';
  static const RoomsPath = "/RoomPage";
  static const KVerify = "/Verify";
  static const kForgetPassword = '/alertdailog';
  static const kAlertdailog = '/alertdailog';
  static const kcarsouldetails = '/carsouldetails';
  static const keventdetilse = '/keventdetilse';
  static const kPastBookingScreen = '/kPastBookingScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Splashscreen(),
      ),
      GoRoute(
        path: kongiung,
        builder: (context, state) => onboarding(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const login(),
      ),

      GoRoute(
        path: kPastBookingScreen,
        builder: (context, state) =>  BottomWidget(),
      ),
      GoRoute(
        path: kForgetPassword,
        builder: (context, state) => const ForgetPassword(),
      ),

      GoRoute(
        path: kregister,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: kOffers,
        builder: (context, state) => const OffersScreen(),
      ),
      GoRoute(
        path: kEvents,
        builder: (context, state) => const EventsScreen(),
      ),
      GoRoute(
        path: keventdetilse,
        builder: (context, state) =>  EventsDetailsScreen(),
      ),
      GoRoute(
        path: KRoomsDetails,
        builder: (context, state) => const BottomCheetView(),
      ),
      GoRoute(
        path: KRoomsDetails,
        builder: (context, state) => const BottomCheetView(),
      ),
      GoRoute(
        path: KBookScreenView,
        builder: (context, state) => BookScreenView(),
      ),
      GoRoute(
        path: KVerify,
        builder: (context, state) => const Verify(),
      ),
      GoRoute(
        path: kHomepage,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KOrdersView,
        builder: (context, state) =>  OrdersView(),
      ),
      GoRoute(
        path: RoomsPath,
        builder: (context, state) => RoomPage(),
      ),

    ],
  );
}
