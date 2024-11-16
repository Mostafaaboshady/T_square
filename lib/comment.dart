//add feature "splash - authentication - onboarding - splashscreen "
//add pub google_fonts, go_router, flutter_bloc
//
//
//
//
//
//
//
//
//
//
//
// import 'package:go_router/go_router.dart';
// import 'package:shaghf/features/authentication_screen/presentation/views/forgotpassword_page.dart';
// import 'package:shaghf/features/authentication_screen/presentation/views/login_page.dart';
// import 'package:shaghf/features/authentication_screen/presentation/views/signup_page.dart';
// import 'package:shaghf/features/authentication_screen/presentation/views/verification_page.dart';
// import 'package:shaghf/features/book_screen/presentation/view/book_screen_view.dart';
// import 'package:shaghf/features/book_screen/presentation/view/widget/book_history_screen.dart';
// import 'package:shaghf/features/book_screen/presentation/view/widget/book_review_screen.dart';
// import 'package:shaghf/features/home_screen/presentation/views/home_page.dart';
// import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/drawer.dart';
// import 'package:shaghf/features/membership_screen/presentation/views/widgets/book_review.dart';
// import 'package:shaghf/features/membership_screen/presentation/views/widgets/select_date_time.dart';
// import 'package:shaghf/features/offers/presentation/views/event_details_screen.dart';
// import 'package:shaghf/features/offers/presentation/views/event_screen.dart';
// import 'package:shaghf/features/offers/presentation/views/offers_page.dart';
// import 'package:shaghf/features/orders/presentation/views/orders_screen.dart';
// import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheetView.dart';
// import 'package:shaghf/features/rooms_screen/presentation/view/room_page.dart';
// import 'package:shaghf/features/settings/presentation/view/contactus_page.dart';
// import 'package:shaghf/features/settings/presentation/view/notification_page.dart';
// import 'package:shaghf/features/settings/presentation/view/profile_page.dart';
// import 'package:shaghf/features/settings/presentation/view/setting_page.dart';
// import 'package:shaghf/features/splash_screen/presentation/view/OnboardingView.dart';
// import 'package:shaghf/features/splash_screen/presentation/view/splashScreen.dart';
// import 'package:shaghf/features/membership_screen/presentation/views/membership_page.dart';
// import 'package:shaghf/features/photosession_screen/presentation/views/photosession_page.dart';
// import 'package:shaghf/features/birthday_screen/presentation/views/birthday_page.dart';
//
// abstract class AppRouter {
//   static const KLoginPage = "/LoginPage";
//   static const KOnboardingView = "/OnboardingView";
//   static const KSignUpPage = "/signup_page";
//   static const KForgotPasswordPage = "/forgotpassword_page";
//   static const KVerificationPage = "/verification_page";
//   static const KHomePage = "/HomePage";
//   static const RoomsPath = "/RoomPage";
//   static const KRoomsDetails = "/BottomCheetView";
//   static const KHomeDrawerPage = "/MyDrawer";
//   static const KBookScreenView = "/BookScreenView";
//   static const KBookReviewScreen = "/BookReviewScreen";
//   static const KBookHistoryScreen = "/BookHistoryScreen";
//   static const KPhotosessionPage = "/PhotosessionPage";
//   static const KMembershipPage = "/MembershipPage";
//   static const KBirthdayPage = "/BirthdayPage";
//   static const EventReview="/EventReview";
//   static const OffersScroll="/OffersScroll";
//   static const EventsScroll="/EventsScroll";
//   static const KSettingPage="/SettingPage";
//   static const KProfilePage="/ProfilePage";
//   static const KContactUsPage="/ContactUsPage";
//   static const KNotificationPage="/NotificationPage";
//   static const KSelectDateTime="/SelectDateTime";
//   static const KBookReview="/BookReview";
//   static const ordersViewRoute = '/OrdersScreen';
//
//
//

//   static final router = GoRouter(routes: [
//     GoRoute(path: '/', builder: (context, state) => Splashscreen()),
//     GoRoute(path: KLoginPage, builder: (context, state) => LoginPage()),
//     GoRoute(path: KHomePage, builder: (context, state) => HomePage()),
//     GoRoute(
//         path: KOnboardingView, builder: (context, state) => OnboardingView()),
//     GoRoute(
//       path: KForgotPasswordPage,
//       builder: (context, state) => ForgotpasswordPage(),
//     ),
//     GoRoute(
//       path: KSignUpPage,
//       builder: (context, state) => SignupPage(),
//     ),
//     GoRoute(
//       path: KVerificationPage,
//       builder: (context, state) => VerificationPage(),
//     ),
//     GoRoute(
//       path: RoomsPath,
//       builder: (context, state) => RoomPage(),
//     ),
//     GoRoute(
//       path: KRoomsDetails,
//       builder: (context, state) => BottomCheetView(),
//     ),
//     GoRoute(
//       path: KBookScreenView,
//       builder: (context, state) => BookScreenView(),
//     ),
//     GoRoute(
//       path: KBookReviewScreen,
//       builder: (context, state) => BookReviewScreen(),
//     ),
//     GoRoute(
//       path: KBookHistoryScreen,
//       builder: (context, state) => BookHistoryScreen(),
//     ),
//     GoRoute(path: KPhotosessionPage, builder: (context, state) => PhotosessionPage()),
//     GoRoute(path: KMembershipPage, builder: (context, state) => MembershipPage()),
//     GoRoute(path: KBirthdayPage, builder: (context, state) => BirthdayPage()),
//     GoRoute(
//       path: OffersScroll,
//       builder: (context, state) => OffersPage(),
//     ),
//     GoRoute(
//       path: EventsScroll,
//       builder: (context, state) =>  EventScreen(),
//     ),
//     GoRoute(
//       path: EventReview,
//       builder: (context, state) =>  EventDetailsScreen(),
//     ),
//     GoRoute(
//       path: KSettingPage,
//       builder: (context, state) =>  SettingPage(),
//     ),
//     GoRoute(
//       path: KProfilePage,
//       builder: (context, state) =>  ProfilePage(),
//     ),
//     GoRoute(
//       path: KContactUsPage,
//       builder: (context, state) =>  ContactUsPage(),
//     ),
//     GoRoute(
//       path: KNotificationPage,
//       builder: (context, state) =>  NotificationPage(),
//     ),
//     GoRoute(
//       path: KSelectDateTime,
//       builder: (context, state) =>  SelectDateTime(),
//     ),
//     GoRoute(
//       path: KBookReview,
//       builder: (context, state) =>  BookReview(),
//     ),
//     GoRoute(
//       path: ordersViewRoute,
//       builder: (context, state) => OrdersScreen(),
//     ),
//
//   ]
//   );
// }
