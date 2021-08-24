import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastestPlan extends StatelessWidget {
  const LastestPlan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24 / 2,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Lastest Search",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Column(
            children: [
              Row(
                children: [
                  LastestSearch(
                    title: "Mason",
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  LastestSearch2(
                    title: "Swissbell",
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  LastestSearch(
                    title: "Yello",
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  LastestSearch2(
                    title: "GH Setiabudi",
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  LastestSearch2(
                    title: "Damoty Hotel",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LastestSearch extends StatelessWidget {
  const LastestSearch({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      height: 33,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 6,
          bottom: 6,
          right: 22,
          left: 22,
        ),
        child: Text(
          "$title",
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class LastestSearch2 extends StatelessWidget {
  const LastestSearch2({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 33,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 6,
          bottom: 6,
          right: 22,
          left: 22,
        ),
        child: Text(
          "$title",
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
