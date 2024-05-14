import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              child: ClipRRect(
                child: Image.asset(
                  item,
                  fit: BoxFit.fill,
                  width: 375,
                  height: 268,
                ),
              ),
            ))
        .toList();
    return Scaffold(
        appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            leadingWidth: MediaQuery.of(context).size.width,
            toolbarHeight: 180,
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(left: 16),
                  height: 39,
                  width: 119,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      height: 38,
                      width: 38,
                      child: Image.asset(
                        "assets/images/user_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning,",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFFFFFFF)),
                        ),
                        Text(
                          "Guest",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFFFFFFF)),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFF4747),
                            Color(0xFFFFF84B),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.25),
                            offset: const Offset(0, 4),
                            blurRadius: 4),
                      ],
                      shape: BoxShape.circle),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    width: 28,
                    height: 28,
                    child: Image.asset("assets/images/task.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFF4747),
                            Color(0xFFFFF84B),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.25),
                            offset: const Offset(0, 4),
                            blurRadius: 4),
                      ],
                      shape: BoxShape.circle),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    width: 28,
                    height: 28,
                    child: Image.asset("assets/images/notifications.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              )
            ],
            flexibleSpace: SizedBox(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      gradient: LinearGradient(
                          colors: [Color(0xFFFE5F5F), Color(0xFFFC9842)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    left: MediaQuery.of(context).size.width * 0.025,
                    right: MediaQuery.of(context).size.width * 0.025,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.05,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFFE5F5F),
                                    Color(0xFFFFF84B)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0xFF000000)
                                        .withOpacity(0.25),
                                    offset: const Offset(0, 4),
                                    blurRadius: 4),
                              ]),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFFE5F5F),
                                    Color(0xFFFFF84B)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0xFF000000)
                                        .withOpacity(0.25),
                                    offset: const Offset(0, 4),
                                    blurRadius: 4),
                              ]),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance Account",
                                        style: GoogleFonts.nunito(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Rp ",
                                            style: GoogleFonts.inter(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "0",
                                            style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        "-",
                                        style: GoogleFonts.nunito(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.26, horizontal: 8),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(4),
                                          ),
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFFFE5F5F),
                                                Color(0xFFFC9842)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter),
                                          border: Border.all(
                                            color: const Color(0xFFFFF84B),
                                            width: 2,
                                          )),
                                      child: Text(
                                        "Top Up",
                                        style: GoogleFonts.nunito(
                                          color: const Color(0xFFFFFFFF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 60),
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
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        gradient: LinearGradient(
                            colors: [Color(0xFFFE5F5F), Color(0xFFFC9842)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        border: Border(
                            bottom: BorderSide(
                              color: Color(0xFFFFF84B),
                              width: 2,
                            ),
                            right: BorderSide(
                              color: Color(0xFFFFF84B),
                              width: 2,
                            ),
                            top: BorderSide(
                              color: Color(0xFFFFF84B),
                              width: 2,
                            ))),
                    child: Image.asset(
                      "assets/images/landmark.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let’s Go with Jakarta Tourist Pass",
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      Text(
                        "don't miss the current events",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 37,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFFFF84B),
                                  Color(0xFFFE5F5F),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "View all",
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 160,
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 11),
                      child: Image.asset(
                        "assets/images/maps.png",
                        width: 68,
                        height: 103,
                      ),
                    ),
                    for (int i = 0; i < 3; i++)
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 11,
                            ),
                           
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: const Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          const Color(0xFF000000).withOpacity(0.25),
                                      offset: const Offset(0, 4),
                                      blurRadius: 4)
                                ]),
                            width: 105,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/event1.png",
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Ancol Entrance Gate",
                                  style: GoogleFonts.nunito(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF000000)),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 1, horizontal: 4),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFFFE5F5F),
                                                Color(0xFFFC9842)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter),
                                          border: Border.all(
                                            color: const Color(0xFFFFF84B),
                                            width: 1,
                                          )),
                                      child: Text(
                                        "Detail",
                                        style: GoogleFonts.nunito(
                                          fontSize: 7,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8,)
                              ],
                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
