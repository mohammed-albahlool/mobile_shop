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
            physics: NeverScrollableScrollPhysics(),
            controller: _pageImageController,
            onPageChanged: (int value) {
              setState(() {
                _currentPage = value;
              });
            },
            children: const [
              PageOnBoarding(image: 'img'),
              PageOnBoarding(image: 'img_1'),
              PageOnBoarding(image: 'img_2'),
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(top: 77,bottom: 50),
            child: Row(
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
          ),
          Expanded(
            child: PageView(
              // reverse: true,
              // pageSnapping: false ,
              // padEnds: false,
              physics: NeverScrollableScrollPhysics(),
              controller: _pageTextController,
              onPageChanged: (int value) {
                setState(() {
                  _currentPage = value;
                });
              },
              children: const [
                TextOnBoarding(title: "Get the Best Smartphone  ", content: "Lorem Ipsum is simply dummy text of the printing and typesetting.."),
                TextOnBoarding(title: "Great experince withour product", content: "Lorem Ipsum is simply dummy text of the printing and typesetting.."),
                TextOnBoarding(title: "Get product from at home", content: "Lorem Ipsum is simply dummy text of the printing and typesetting.."),
              ],
            ),
          ),
          Visibility(
              visible: _currentPage < 2,replacement: Padding(
            padding: const EdgeInsets.only(bottom: 95.0,left: 30,right: 30),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/sign_up_screen');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF38972E),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Text('Start')),
          ) ,

          child: Padding(
              padding: const EdgeInsets.only(bottom: 95.0),
              child: ElevatedButton(  onPressed: () {
                if (_currentPage < 2) {
                  _pageImageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                  _pageTextController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }
              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF38972E),
                    minimumSize: Size(44, 44),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    )),
                child: Icon(Icons.arrow_forward_ios_rounded),),
            ),
          ),
        ],
      ),),
    );
  }
}
