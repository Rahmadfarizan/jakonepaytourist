import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakonepaytourist/notched_bottom_bar.dart';
import 'package:jakonepaytourist/qr_view_example.dart';
import 'package:jakonepaytourist/screen/body_home_screen.dart';

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
  int indexNav = 0;
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
                    gradient: const LinearGradient(colors: [
                      Color(0xFFFF4747),
                      Color(0xFFFFF84B),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
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
                    gradient: const LinearGradient(colors: [
                      Color(0xFFFF4747),
                      Color(0xFFFFF84B),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
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
                                colors: [Color(0xFFFE5F5F), Color(0xFFFFF84B)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.25),
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
                                colors: [Color(0xFFFE5F5F), Color(0xFFFFF84B)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.25),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4),
                            ]),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.82,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
      body: BodyHomeScreen(imageSliders: imageSliders),
      bottomNavigationBar: NotchedBottomNav(
        indexNav: indexNav,
        onChange: (index) {
          setState(() {
            indexNav = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        clipBehavior: Clip.none,
        children: [
          FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFFFF4747),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const QRViewExample())),
              child: Container(
                padding: const EdgeInsets.all(4),
                height: 50,
                width: 50,
                child: Image.asset('assets/images/qris.png'),
              )),
        ],
      ),
    );
  }
}
