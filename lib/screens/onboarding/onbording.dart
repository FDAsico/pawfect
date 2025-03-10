import 'package:flutter/material.dart';
import 'package:pawfect/screens/login/login.dart';
import 'package:pawfect/screens/signup/signup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

/* 
Authored by: Francis Dave A. Asico
Company: JaCode Facctory
Project: Pawfect Naga
Feature: [PAW-8] On-Boarding Screen
Description: OnBoarding Screen to introduce the users to the app
*/

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  // PageController
  final PageController _pageController = PageController();
    int _currentIndex = 0;
    final List<Widget> _pages = [
      OnBoardComponent(
        title: "Welcome to Pawfect Naga", 
        description: "We're here to help you find the perfect buddy friend that will fill your life with love and joy.", 
        imagePath: "assets/images/Adopt a pet-amico 1.png"
      ),
      OnBoardComponent(
        title: "Community for pet lovers", 
        description: "Our platform makes it easy for you to search, connect, and adopt your buddy soulmate. ", 
        imagePath: "assets/images/Adopt a pet-pana 1.png"
      ),
      OnBoardComponent(
        title: "Pet Care Made Easy ", 
        description: "We offer convenient services and a supportive community for your pet's happiness and well-being.", 
        imagePath: "assets/images/pet care-amico 1.png"
      )
    ];

    void _skip() {
      _pageController.animateToPage(
        _pages.length - 1,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut
      );
    }

    void _onNext() {
      if(_currentIndex < _pages.length -1) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 500), 
          curve: Curves.easeInOut
        );
      }
    }

  void _onLogin() {
    setinitScreenVal();
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => Login()
      )
    );
  }

  void _onGetStarted() {
    setinitScreenVal();
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => SignUp(initShow: 0)
      )
    );
  }

  void setinitScreenVal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? initScreen = prefs.getInt('initScreen');
    await prefs.setInt("initScreen", 1);
    debugPrint('initScreen $initScreen');
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = (brightness == Brightness.dark);
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) => _pages[index],          
          ),
          if (_currentIndex == _pages.length - 1) ...[
            Positioned(
              left: 0,
              right: 0,
              bottom: 100,
              child: Center(
                child: FilledButton(
                  onPressed: _onGetStarted, 
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )
                    )
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.zero,
                    child: Text("Already have an account? ")
                  ),
                  GestureDetector(
                    onTap: _onLogin,
                    child: SizedBox(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: isDarkMode ? Color(0xFFe6e0e9) : Color.fromARGB(255, 21, 3, 57),
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  )
                ],
              )
            )
           ] else ...[
            Positioned(
              bottom: 40,
              left: 20,
              child: TextButton(
                onPressed: _skip, 
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ) 
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: TextButton(
                onPressed: _onNext,
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ),
           ],
          Positioned(
            left: 0, 
            right: 0,
            bottom: 170,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController, 
                count: _pages.length,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  dotColor: isDarkMode ? Color(0xFFe6e0e9) : Color.fromARGB(107, 249, 194, 186),
                  activeDotColor: isDarkMode ? Color(0xFFD0BCFE) : Color(0xFF5B488B),
                )
              ),
            )
          )
        ]
      )
    );
  }
}

// Component
class OnBoardComponent extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  const OnBoardComponent({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = (brightness == Brightness.dark);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 300,),
        SizedBox(height: 30,),
        Text(
          title,
          style: TextStyle(
            color: isDarkMode ? Color(0xFFD0BCFE) : Color(0xFF5B488B) ,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )
        ),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              //color: Color(0xFF000000),
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}