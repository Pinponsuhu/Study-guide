import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_prep/constants/color.dart';
import 'package:school_prep/pages/login.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _slides = [
    {
      'image': 'asset/svg/education.svg',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
      'header': 'Welcome to AppName'
    },
    {
      'image': 'asset/svg/undraw_educator_re_ju47.svg',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
      'header': 'Anywhere, Anytime'
    },
    {
      'image': 'asset/svg/reading.svg',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
      'header': 'Examination'
    },
  ];
  double page = 0.0;
  int slideIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: slideIndex);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundK,
      appBar: AppBar(backgroundColor: backgroundK, elevation: 0, actions: [
        Visibility(
          visible: slideIndex >= 2 ? false : true,
          child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  color: terK,
                  fontSize: 17,
                ),
              )),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      slideIndex = index;
                    });
                    print(slideIndex);
                  },
                  itemCount: _slides.length,
                  itemBuilder: (context, index) => Slides(
                      image: _slides[index]['image'] as String,
                      header: _slides[index]['header'] as String,
                      description: _slides[index]['description'] as String)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        page = _pageController.page! - 1;
                      });
                      print(page);
                      _pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: backgroundK,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: primaryK,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      ...List.generate(_slides.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: PageCounter(isActive: index == slideIndex),
                        );
                      })
                    ],
                  ),
                  slideIndex >= 2
                      ? TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Get started",
                            style: TextStyle(
                              color: primaryK,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              page = _pageController.page! + 1;
                            });
                            print(page);
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: primaryK,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: backgroundK,
                              size: 16,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageCounter extends StatelessWidget {
  PageCounter({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 4,
      width: isActive == true ? 14 : 8,
      color: isActive == true ? primaryK : terK,
    );
  }
}

class Slides extends StatelessWidget {
  const Slides({
    Key? key,
    required this.image,
    required this.header,
    required this.description,
  }) : super(key: key);

  final String image, header, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        AspectRatio(
          aspectRatio: 30 / 20,
          child: SvgPicture.asset(image),
        ),
        Spacer(),
        Text(
          textAlign: TextAlign.center,
          header,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          textAlign: TextAlign.center,
          description,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 17,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
