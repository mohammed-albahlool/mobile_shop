import 'package:flutter/material.dart';
import 'package:mobile_shop/widget/custom_indicator.dart';
import 'package:mobile_shop/widget/page_onbording.dart';
import 'package:mobile_shop/widget/text_onboarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  late PageController _pageImageController;
  late PageController _pageTextController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageImageController = PageController();
    _pageTextController = PageController();
  }

  @override
  void dispose() {
    _pageImageController.dispose();
    _pageTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: PageView(
            physics: BouncingScrollPhysics(),
            controller: _pageImageController,
            onPageChanged: (int value) {
              setState(() {
                _currentPage = value;
              });
            },
            children: [
              PageOnBoarding(image: 'img'),
              PageOnBoarding(image: 'img_1'),
              PageOnBoarding(image: 'img_2'),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(
                selected: _currentPage == 0,
                marginEnd: 10,
              ),
              CustomIndicator(
                selected: _currentPage == 1,
                marginEnd: 10,
              ),
              CustomIndicator(selected: _currentPage == 2),
            ],
          ),
          Expanded(
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageTextController,
              onPageChanged: (int value) {
                setState(() {
                  _currentPage = value;
                });
              },
              children: [
                TextOnBoarding(title: "Get the Best Smartphone  ", content: "Lorem Ipsum is simply dummy text of the printing and typesetting.."),
                TextOnBoarding(title: "Great experince withour product", content: "Lorem Ipsum is simply dummy text of the printing and typesetting.."),
                TextOnBoarding(title: "Get product from at home", content: "Lorem Ipsum is simply dummy text of the printing and typesetting.."),
              ],
            ),
          ),
          Visibility(
              visible: _currentPage < 2,

          child: Padding(
              padding: const EdgeInsets.only(bottom: 95.0),
              child: ElevatedButton(  onPressed: () {
                if (_currentPage < 2) {
                  _pageImageController.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutBack);
                  _pageTextController.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutBack);
                }
              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    minimumSize: Size(44, 44),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    )),
                child: Icon(Icons.arrow_forward_ios_rounded),),
            ),replacement: Padding(
            padding: const EdgeInsets.only(bottom: 95.0,left: 30,right: 30),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login_screen');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Text('Start')),
          ) ,
          ),
          // Visibility(
          //   visible: _currentPage == 2,
          //   maintainSize: true,
          //   maintainState: true,
          //   maintainAnimation: true,
          //   child:
          // ),

        ],
      ),),
    );
  }
}
