// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/route_manager.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// class Intro extends StatelessWidget {
//   const Intro({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return IntroductionScreen(
//       globalBackgroundColor: Colors.white,
//       showNextButton: true,
//       showDoneButton: true,
//       showSkipButton: false,
//       done: const Text('Done'),
//       onDone: () => Get.to(() => const Home()),
//       next: const Icon(Icons.arrow_forward),
//       pages: [
//         PageViewModel(
//           image: SvgPicture.asset('assets/intro1.svg'),
//           title: 'auto invoice',
//           decoration: const PageDecoration(
//             imagePadding: EdgeInsets.only(top: 50.0),
//           ),
//         ),
//       ],
//     );
//   }
// }
