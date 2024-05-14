import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:jakonepaytourist/widget/event_item_widget.dart';
import 'package:jakonepaytourist/widget/title_widget.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({
    super.key,
    required this.imageSliders,
  });

  final List<Widget> imageSliders;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60),
          color: const Color(0xFFFFFFFF),
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 62,
                        height: 62,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFF84B),
                                  Color(0xFFFE5F5F),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFE3CA),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 47,
                          width: 47,
                          child: Image.asset(
                            "assets/images/menu1.png",
                            height: 47,
                            width: 47,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Explore Jakarta",
                        style: GoogleFonts.nunito(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 62,
                        height: 62,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFF84B),
                                  Color(0xFFFE5F5F),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFE3CA),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 47,
                          width: 47,
                          child: Image.asset(
                            "assets/images/menu2.png",
                            height: 47,
                            width: 47,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Top Up JakCard",
                        style: GoogleFonts.nunito(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 62,
                        height: 62,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFF84B),
                                  Color(0xFFFE5F5F),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFE3CA),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 47,
                          width: 47,
                          child: Image.asset(
                            "assets/images/menu3.png",
                            height: 47,
                            width: 47,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "JakCard Balance",
                        style: GoogleFonts.nunito(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 62,
                        height: 62,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFF84B),
                                  Color(0xFFFE5F5F),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFE3CA),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 47,
                          width: 47,
                          child: Image.asset(
                            "assets/images/menu4.png",
                            height: 47,
                            width: 47,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Event",
                        style: GoogleFonts.nunito(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF000000)),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 91,
                autoPlay: true,
              ),
              items: imageSliders,
            ),
            const SizedBox(
              height: 32,
            ),
            const TitleWidget(
              title: "Let’s Go with Jakarta Tourist Pass",
              subTitle: "a place not to be missed",
              image: "assets/images/landmark.png",
            ),
            const SizedBox(
              height: 16,
            ),
            const EventItemWidget(
              isEvent: false,
            ),
            const SizedBox(
              height: 24,
            ),
            const TitleWidget(
              title: "Events in Jakarta",
              subTitle: "don't miss the current events",
              image: "assets/images/calendar.png",
            ),
            const SizedBox(
              height: 16,
            ),
            const EventItemWidget(
              isEvent: true,
            ),
          ]),
        ),
      ),
    );
  }
}
