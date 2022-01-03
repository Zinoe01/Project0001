import 'package:Project0001/utils/colors.dart';
import 'package:Project0001/utils/custom_transition.dart';
import 'package:Project0001/utils/text.dart';
import 'package:Project0001/views/onboarding/onboardingview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  // const OnBoardingScreen({ Key? key }) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(CustomPageRoute(OnBoardingView()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50))
                    // image: DecorationImage(
                    //     fit: BoxFit.cover,
                    //     image: AssetImage("assets/images/img4.jpg"))
                    ),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://images.unsplash.com/photo-1544145945-f90425340c7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZHJpbmt8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                  placeholder: (context, _) => CircularProgressIndicator(),
                ),
              ),
            ),
            SizedBox(height: 8),
            AppText.text4(
              "Project0001",
              color: kAccentColor,
            )
          ],
        ),
      ),
    );
  }
}
