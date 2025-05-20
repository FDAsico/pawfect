import 'package:flutter/material.dart';
import 'package:pawfect/screens/adoptdetails.dart';
import 'package:pawfect/screens/adoptpage.dart';
import 'package:pawfect/screens/chatscreen.dart';
import 'package:pawfect/screens/discoverpage.dart';
import 'package:pawfect/screens/forgot.dart';
import 'package:pawfect/screens/home.dart';
import 'package:pawfect/screens/login.dart';
import 'package:pawfect/screens/notifications.dart';
import 'package:pawfect/screens/onbording.dart';
import 'package:pawfect/screens/petboarding.dart';
import 'package:pawfect/screens/petgrooming.dart';
import 'package:pawfect/screens/petstore.dart';
import 'package:pawfect/screens/petstore_categories.dart';
import 'package:pawfect/screens/petstore_shop.dart';
import 'package:pawfect/screens/productdetailpage.dart';
import 'package:pawfect/screens/profilepage.dart';
import 'package:pawfect/screens/reset.dart';
import 'package:pawfect/screens/shoppage.dart';
import 'package:pawfect/screens/signup.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/forgot':
        return MaterialPageRoute(builder: (_) => Forgot());
      case '/reset':
        return MaterialPageRoute(builder: (_) => Reset());
      case '/signup':
        return MaterialPageRoute(
            builder: (_) => SignUp(
                  initShow: 1,
                ));
      case '/firstuse':
        return MaterialPageRoute(
            builder: (_) => SignUp(
                  initShow: 0,
                ));
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/discover':
        return MaterialPageRoute(builder: (_) => DiscoverPage());
      case '/adopt':
        return MaterialPageRoute(builder: (_) => PetAdoptPage());
      case '/adoptdetails':
        return MaterialPageRoute(builder: (_) => PetDetailsPage());
      case '/shop':
        return MaterialPageRoute(builder: (_) => ShopPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/messaging':
        return MaterialPageRoute(builder: (_) => MessagingPage());
      case '/notification':
        return MaterialPageRoute(builder: (_) => Notifications());
      case '/petboarding':
        return MaterialPageRoute(builder: (_) => PetBoarding());
      case '/petgrooming':
        return MaterialPageRoute(builder: (_) => PetGroomingScreen());
      case '/petstore':
        return MaterialPageRoute(builder: (_) => PetStorePage());
      case '/petcategorystore':
        return MaterialPageRoute(builder: (_) => PetstoreCategories());
      case '/petshop':
        return MaterialPageRoute(builder: (_) => PetShopPage());
      case '/productdetails':
        return MaterialPageRoute(builder: (_) => ProductDetailScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('ERROR'),
          ));
    });
  }
}
