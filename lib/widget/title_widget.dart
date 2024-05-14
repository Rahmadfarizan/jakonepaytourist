
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key, required this.title, required this.subTitle, required this.image,
  });
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            image,
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
              title,
              style: GoogleFonts.nunito(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF000000),
              ),
            ),
            Text(
             subTitle,
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
    );
  }
}
