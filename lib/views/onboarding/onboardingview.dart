import 'package:Project0001/utils/text.dart';
import 'package:Project0001/widgets/appbutton.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnBoardingView extends StatelessWidget {
  // const OnBoardingView({ Key key }) : super(key: key);
  final CarouselController _controller = CarouselController();
  final List<String> imageUrl = [
    "https://images.unsplash.com/photo-1511688878353-3a2f5be94cd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZCUyMHJlY2VpcGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZvb2QlMjByZWNlaXBlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGZvb2QlMjByZWNlaXBlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];
  final List<String> text = [
    "Welcome to Project Recipe",
    "Just knowing you don't have the answers is a recipe for humility, openness, acceptance, forgiveness, and an eagerness to learn - and those are all good things.",
    "What is the recipe for successful achievement? To my mind there are just four essential ingredients: Choose a career you love, give it the best there is in you, seize your opportunities, and be a member of the team."
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: 3,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1,
                autoPlayAnimationDuration: Duration(seconds: 1)
                // enlargeCenterPage: true,
                // aspectRatio: 2.0,
                // initialPage: 2,
                ),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
              // height: double.infinity,
              // width: double.infinity,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //       ),

              // ),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imageUrl[itemIndex],
                placeholder: (context, _) => CircularProgressIndicator(),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff000000).withOpacity(0.3),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 15,
            right: 15,
            child: SafeArea(
              // height: 465,
              child: Column(
                children: [
                  // SizedBox(height: 188),

                  CarouselSlider.builder(
                    itemCount: 3,
                    options: CarouselOptions(
                      autoPlay: true,
                      height: 100,
                      // autoPlayAnimationDuration: Duration(milliseconds: 500),
                      viewportFraction: 1,
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        AppText.text6(
                      text[itemIndex],
                      color: Color(0xffffffff),
                      multiText: true,
                      centered: true,
                    ),
                  ),
                  SizedBox(height: 238),
                  Container(
                    height: 53,
                    child: AppButton(
                      color: false,
                      title: "Create account", // width: 343,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 53,
                    child: AppButton(
                      color: true,
                      title: "Login", // width: 343,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
