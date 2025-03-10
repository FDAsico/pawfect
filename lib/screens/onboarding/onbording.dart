import 'package:flutter/material.dart';
import 'package:pawfect/screens/signup/signup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        title: "Welcome", 
        description: "Discover the app that makes your life easier", 
        imagePath: "lib/assets/images/Adopt a pet-amico 1.png"
      ),
      OnBoardComponent(
        title: "Explore", 
        description: "Explore amazing features tailored for you", 
        imagePath: "lib/assets/images/pet care-amico 1.png"
      ),
      OnBoardComponent(
        title: "Stay Connected", 
        description: "Keep in touch with your friends and family", 
        imagePath: "lib/assets/images/Adopt a pet-pana 1.png"
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
      } else {
        _onFinish();
      }
    }

  void _onFinish() {
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => SignUp()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          _currentIndex == _pages.length - 1 ? SizedBox.shrink() : Positioned(
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
                _currentIndex == _pages.length - 1 ? "Finish" : "Next",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 60,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController, 
                count: _pages.length,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blue,
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 300,),
        SizedBox(height: 30,),
        Text(
          title,
          style: TextStyle(
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
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }
}