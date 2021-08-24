import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contanta.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 50,
            color: backgroundsecond,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Positioned(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
                height: 75,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 16,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Balance",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: textthird,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "IDR 9.200.301",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: backgroundsecond,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: IconButton(
                            icon: Image.asset(
                              "assets/images/button_plus.png",
                              scale: 4,
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
