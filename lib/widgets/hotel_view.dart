import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 2)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Styles.primaryColor,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/one.png"))),
          ),
          const Gap(15),
          Text(
            "Open space",
            style: Styles.headerLineStyle3.copyWith(color: Colors.black),
          ),
          const Gap(10),
          Text(
            "London",
            style: Styles.headerLineStyle3.copyWith(fontWeight: FontWeight.w400),
          ),
          const Gap(14),
          Text(
            "\$40/night",
            style: Styles.headerLineStyle2.copyWith(color: Styles.orangeColor),
          )
        ],
      ),
    );
  }
}
