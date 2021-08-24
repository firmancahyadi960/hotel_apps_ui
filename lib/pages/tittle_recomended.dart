import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contanta.dart';

class TittleRecomended extends StatelessWidget {
  const TittleRecomended({
    Key key,
    this.title,
    this.context,
  }) : super(key: key);
  final String title, context;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Text(
                "$title",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                "View all",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: backgroundsecond,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
