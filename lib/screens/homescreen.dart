import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/hotel_view.dart';
import 'package:booktickets/widgets/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                const Gap(40),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good morning",
                            style: Styles.headerLineStyle3.copyWith(
                                color: Colors.grey),),
                          const Gap(5),
                          Text("Book Tickets", style: Styles.headerLineStyle1,)
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/img_1.png")
                            )
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(25),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),),
                      const Gap(15),
                      Text(
                        "Search",
                        style: Styles.headerLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights", style: Styles.headerLineStyle2,),
                      InkWell(
                          onTap: () {
                            print("You tapped!!");
                          },
                          child: Text("View all",
                            style: Styles.textStyle.copyWith(color: Colors.grey),)
                      )
                    ],
                  ),
                ),
                const Gap(15),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        TicketView(),
                        TicketView()
                      ],
                    )
                ),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotels", style: Styles.headerLineStyle2,),
                      InkWell(
                          onTap: () {
                            print("You tapped!!");
                          },
                          child: Text("View all",
                            style: Styles.textStyle.copyWith(color: Colors.grey),)
                      )
                    ],
                  ),
                ),
                const Gap(15),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        HotelView(),
                        HotelView()
                      ],
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
