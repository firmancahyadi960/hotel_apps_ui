import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_apps/pages/recomended_hotel.dart';
import 'package:hotel_apps/pages/tittle_recomended.dart';
import 'haeder_menu.dart';
import 'new_hotel.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          children: [
            HeaderMenu(),
            SizedBox(
              height: 24,
            ),
            TittleRecomended(
              title: "Recommended Hotels",
            ),
            SizedBox(
              height: 24,
            ),
            RecomendedHotelPlan(),
            SizedBox(
              height: 24,
            ),
            TittleRecomended(
              title: "New Hotels Experience",
            ),
            SizedBox(
              height: 24,
            ),
            HotelPlan(),
          ],
        ),
      ],
    );
  }
}
