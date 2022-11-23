import 'package:flutter/material.dart';
import 'package:project_api/utils/app_loyout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTag;
  final String secondTag;
  const AppTicketTabs(
      {super.key, required this.firstTag, required this.secondTag});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50)),
                color: Colors.white,
              ),
              child: Center(
                child: Text(firstTag),
              ),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50)),
                color: Color.fromARGB(255, 242, 239, 239),
              ),
              child: Center(
                child: Text(secondTag),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(
            0xFFF4F6FD,
          ),
        ),
      ),
    );
  }
}
