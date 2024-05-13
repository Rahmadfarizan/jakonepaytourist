import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:jakonepaytourist/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JakOne Pay',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = true;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  final List<String> imgList = [
    'assets/images/jakarta1.png',
    'assets/images/jakarta2.png',
    'assets/images/jakarta3.png',
  ];

  final CarouselController _controller = CarouselController();
  List<int> list = [1, 2, 3, 4, 5];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  item,
                  fit: BoxFit.fill,
                  width: 375,
                  height: 268,
                ),
              ),
            ))
        .toList();
    return (isLoading)
        ? Scaffold(
            body: Container(
                color: const Color(0xFFFF4747),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/splash/splash.png",
                  fit: BoxFit.fill,
                )),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFFFFFFFF),
              leadingWidth: MediaQuery.of(context).size.width / 3,
              leading: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 28,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF000000).withOpacity(0.25),
                              blurRadius: 4,
                              offset: const Offset(0, 4))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: const Color(0xFF000000)
                                        .withOpacity(0.1),
                                    blurRadius: 4,
                                    offset: const Offset(0, 1))
                              ]),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'assets/images/indo.png',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: const Color(0xFF000000)
                                        .withOpacity(0.1),
                                    blurRadius: 4,
                                    offset: const Offset(0, 1))
                              ]),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'assets/images/english.png',
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                Container(
                  height: 28,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 4))
                      ]),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 11, vertical: 2),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 10,
                            width: 10,
                            child: Image.asset(
                              'assets/images/credit-card.png',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                            height: 11,
                            width: 25,
                            child: Image.asset(
                              'assets/images/jakcard.png',
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
            body: Container(
              color: const Color(0xFFFFFFFF),
              height: MediaQuery.of(context).size.height,
              child: Column(children: [
                const SizedBox(
                  height: 90,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 1,
                      height: 268,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: imageSliders,
                ),
                const SizedBox(
                  height: 16,
                ),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [Color(0xFFFE5F5F), Color(0xFFFC9842)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(bounds);
                  },
                  child: Text(
                    'Explore Jakarta with Jakarta Tourist Pass',
                    style: GoogleFonts.nunito(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 4.25,
                        height: 4.25,
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: entry.key == _current
                                ? const Color(0xFFFE5F5F)
                                : const Color(0xFFFFDBA5)),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 37.5,
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen())),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 6.5),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                          gradient: const LinearGradient(
                              colors: [Color(0xFFFE5F5F), Color(0xFFFC9842)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          border: Border.all(
                            color: const Color(0xFFFFF84B),
                            width: 2,
                          )),
                      child: Text(
                        "Continue as Guest",
                        style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFFFFFF),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 37.5,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6.5),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      color: Color(0xFFFFFFFF),
                      border: GradientBoxBorder(
                          width: 3,
                          gradient: LinearGradient(colors: [
                            Color(0xFFFFF84B),
                            Color(0xFFFE5F5F),
                          ])),
                    ),
                    child: Text(
                      "Continue as Guest",
                      style: GoogleFonts.nunito(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFFE5F5F),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
            ),
          );
  }
}
