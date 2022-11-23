import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_api/utils/app_loyout.dart';
import 'package:project_api/utils/app_style.dart';
import 'package:project_api/widgets/double_test_widget.dart';
import 'package:project_api/widgets/icon_text_widget.dart';
import 'package:project_api/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 233, 233),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Text(
            "What are \h you looking for?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: 35, color: Colors.black),
          ),
          Gap(20),
          AppTicketTabs(
            firstTag: "Airline ticket",
            secondTag: "Hotels",
          ),
          Gap(25),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "departure"),
          Gap(25),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "find ticket",
                style: Styles.textStyle
                    .copyWith(color: Colors.white, fontSize: 23),
              ),
            ),
          ),
          Gap(35),
          const AppDoubleTextWidget(
              bigText: "Upcoming fliying", smallText: "View all"),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img4.jpg"),
                        ),
                      ),
                    ),
                    Gap(12),
                    Text(
                      "20% des prix sont reduit avec les voyage de vaccances",
                      style:
                          Styles.headLineStyle2.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "acoount \for survey",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(10),
                            Text(
                              "Take the survey about our service and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 15, color: Colors.greenAccent),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Container(
                    width: size.width * 0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 230, 81, 12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "take love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(5),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: '😌', style: TextStyle(fontSize: 38)),
                            TextSpan(
                                text: '😌', style: TextStyle(fontSize: 48)),
                            TextSpan(
                                text: '😌', style: TextStyle(fontSize: 28)),
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
