import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: <Widget>[
          ClipPath(
            clipper: WaveShape(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 4 / 16,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 1, 8, 14),
                    Color.fromARGB(255, 0, 1, 2)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 80,
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.transparent,
                // backgroundImage: NetworkImage(''),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 500,
                    child: PageView(
                      controller: _pageController,
                      children: [
                        onBoardPage("settings", "Auto E-invoice"),
                      ],
                      onPageChanged: (value) => {setCurrentPage(value)},
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          List.generate(1, (index) => getIndicator(index))),
                ],
              ),
              Positioned(
                  bottom: 50,
                  left: 20,
                  right: 20,
                  child: InkWell(
                    onTap: changePage,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Color.fromARGB(255, 204, 19, 201),
                      ),
                      child: const Center(
                        child: Text(
                          "Create Online store",
                          style: TextStyle(
                              color: Color.fromARGB(255, 6, 0, 0),
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'sfpro'),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: 10,
        width: (currentPage == pageNo) ? 20 : 10,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: (currentPage == pageNo)
                ? Color.fromARGB(255, 0, 1, 2)
                : Color.fromARGB(255, 6, 0, 0)));
  }

  Column onBoardPage(String img, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/$img.jpg'))),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 30,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: const Text(
            "Get ready to make your life easier with single click away which makes laundry service much easier",
            style: TextStyle(fontSize: 20, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  void changePage() {
    // ignore: avoid_print
    print(currentPage);
    if (currentPage == 0) {
    } else {
      _pageController.animateToPage(currentPage + 0,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    }
  }
}

class WaveShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var p = Path();
    p.lineTo(0, 0);
    p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, height);
    p.lineTo(width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
