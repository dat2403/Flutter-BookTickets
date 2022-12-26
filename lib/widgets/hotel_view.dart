import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

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
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const Gap(15),
          Text(
            hotel['place'],
            style: Styles.headerLineStyle3.copyWith(color: Colors.black),
          ),
          const Gap(10),
          Text(
            hotel['destination'],
            style: Styles.headerLineStyle3.copyWith(fontWeight: FontWeight.w400),
          ),
          const Gap(14),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headerLineStyle2.copyWith(color: Styles.orangeColor),
          )
        ],
      ),
    );
  }
}
