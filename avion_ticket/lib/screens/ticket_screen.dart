import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:project_api/screens/ticket_view.dart';
import 'package:project_api/utils/app_info_list.dart';
import 'package:project_api/utils/app_loyout.dart';
import 'package:project_api/utils/app_style.dart';
import 'package:project_api/widgets/column_layout.dart';
import 'package:project_api/widgets/layout_builder_widget.dart';
import 'package:project_api/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              Gap(20),
              Text("Ticket",
                  style: Styles.headLineStyle1.copyWith(color: Colors.black)),
              const AppTicketTabs(firstTag: "Upcoming", secondTag: "Previous"),
              Gap(20),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 22),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: 'Flutter db',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        Gap(15),
                        ColumnLayout(
                          firstText: '5262 56864516',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(20),
                    const AppLayoutBuilderWidget(
                      sections: 16,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: '0005 8965 2659',
                          secondText: 'number of ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        Gap(15),
                        ColumnLayout(
                          firstText: 'B86532',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(20),
                    const AppLayoutBuilderWidget(
                      sections: 16,
                      isColor: false,
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "VISA",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 33, 54, 243),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  " *** 2542",
                                  style: Styles.headLineStyle4,
                                ),
                              ],
                            ),
                            Gap(5),
                            Text("payement method",
                                style: Styles.headLineStyle4)
                          ],
                        ),
                        ColumnLayout(
                          firstText: '\$8512',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21)),
                ),
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: 'https/github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
              left: 22,
              top: 295,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              )),
          Positioned(
              right: 22,
              top: 295,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ))
        ],
      ),
    );
  }
}
