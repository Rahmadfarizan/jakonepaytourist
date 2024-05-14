import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventItemWidget extends StatelessWidget {
  const EventItemWidget({
    super.key,
    required this.isEvent,
  });
  final bool isEvent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: isEvent ? 200 : 160,
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          if (!isEvent)
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
                  margin: EdgeInsets.symmetric(
                    horizontal: isEvent ? 8 : 11,
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: (isEvent) ? 10 : 0,
                      horizontal: (isEvent) ? 10 : 0),
                  decoration: (isEvent)
                      ? BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFE5F5F),
                              Color.fromARGB(255, 255, 202, 156),
                              Color(0xFFFFFFFF),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.25),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4)
                            ])
                      : BoxDecoration(
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
                  width: isEvent ? 190 : 105,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        (!isEvent)
                            ? "assets/images/event1.png"
                            : "assets/images/event3.png",
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      if (!isEvent)
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
                              isEvent ? "More Information" : "Detail",
                              style: GoogleFonts.nunito(
                                fontSize: 7,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          if (isEvent)
                            const Spacer()
                          else
                            const SizedBox(
                              width: 8,
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
        ],
      ),
    );
  }
}
