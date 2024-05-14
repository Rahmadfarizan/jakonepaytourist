import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotchedBottomNav extends StatelessWidget {
  const NotchedBottomNav(
      {super.key, required this.indexNav, required this.onChange});
  final int indexNav;
  final void Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.05),
            offset: const Offset(0, -4),
            blurRadius: 4),
      ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        child: BottomAppBar(
          color: const Color.fromRGBO(255, 255, 255, 0.9),
          surfaceTintColor: Colors.white,
          elevation: 1,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          height: 85,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  onChange(0);
                },
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/home.png",
                      height: 24,
                      width: 24,
                      color: indexNav == 0
                          ? const Color(0xFFFF4747)
                          : const Color(0xFF000000),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Home',
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: indexNav == 0
                                ? FontWeight.w700
                                : FontWeight.w400,
                            color: indexNav == 0
                                ? const Color(0xFFFF4747)
                                : const Color(0xFF000000)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 40.0),
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  onChange(1);
                },
                child: Column(
                  children: [
                    Image.asset("assets/images/person.png",
                        height: 24,
                        width: 24,
                        color: indexNav == 1
                            ? const Color(0xFFFF4747)
                            : const Color(0xFF000000)),
                    Text(
                      'Profile',
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: indexNav == 1
                                ? FontWeight.w700
                                : FontWeight.w400,
                            color: indexNav == 1
                                ? const Color(0xFFFF4747)
                                : const Color(0xFF000000)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


